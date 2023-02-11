import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/data/base_repository.dart';
import '../../../../core/error/failures.dart';
import '../../domain/entities/governorate.dart';
import '../../domain/entities/help_type.dart';
import '../../domain/repositories/home_repository.dart';
import '../data_sources/local/home_local_data_source.dart';
import '../data_sources/remote/home_remote_data_source.dart';

@LazySingleton(as: HomeRepository)
class HomeRepositoryImp extends BaseRepositoryImpl implements HomeRepository {
  final HomeLocalDataSource _local;
  final HomeRemoteDataSource _remote;

  HomeRepositoryImp(
    this._local,
    this._remote, {
    required super.baseLocalDataSource,
    required super.networkInfo,
  });

  @override
  Future<Either<Failure, List<Governorate>>> getAllGovernorates() async {
    final storedGovernorates = await _local.getGovernorates();
    if (storedGovernorates.isEmpty) {
      return remoteRequest(
        (token) async {
          final governorates = await _remote.getAllGovernorates(token: token);
          await _local.storeGovernorates(governorates: governorates);
          return governorates;
        },
      );
    } else {
      return localRequest(
        () => _local.getGovernorates(),
      );
    }
  }

  @override
  Future<Either<Failure, List<HelpType>>> getAllHelpTypes() async =>
      await remoteRequest(
        (token) => _remote.getAllHelpTypes(token: token),
      );

  @override
  Future<Either<Failure, void>> logout() async {
    try {
      await baseLocalDataSource.logout();
      return const Right(null);
    } catch (e) {
      return const Left(CacheFailure());
    }
  }
}

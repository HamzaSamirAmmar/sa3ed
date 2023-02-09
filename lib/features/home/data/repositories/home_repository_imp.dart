import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:sa3ed/features/home/domain/entities/help_type.dart';

import '../../../../core/data/base_repository.dart';
import '../../../../core/error/failures.dart';
import '../../domain/entities/governorate.dart';
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
  Future<Either<Failure, List<Governorate>>> getAllGovernorates() async =>
      await remoteRequest(
        () => _remote.getAllGovernorates(),
      );

  @override
  Future<Either<Failure, List<HelpType>>> getAllHelpTypes() async =>
      await remoteRequest(
        () => _remote.getAllHelpTypes(),
      );
}

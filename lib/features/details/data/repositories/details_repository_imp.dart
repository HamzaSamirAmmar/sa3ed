import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/data/base_repository.dart';
import '../../../../core/entities/help.dart';
import '../../../../core/error/failures.dart';
import '../../domain/repositories/details_repository.dart';
import '../data_sources/local/details_local_data_source.dart';
import '../data_sources/remote/details_remote_data_source.dart';

@LazySingleton(as: DetailsRepository)
class DetailsRepositoryImp extends BaseRepositoryImpl
    implements DetailsRepository {
  final DetailsLocalDataSource _local;
  final DetailsRemoteDataSource _remote;

  DetailsRepositoryImp(
    this._local,
    this._remote, {
    required super.baseLocalDataSource,
    required super.networkInfo,
  });

  @override
  Future<Either<Failure, Help>> getHelp({
    required int id,
    required bool isOffer,
  }) async =>
      await remoteRequest(
        (token) => _remote.getHelp(
          id: id,
          isOffer: isOffer,
          token: token,
        ),
      );
}

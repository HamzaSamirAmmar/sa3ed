import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/data/base_repository.dart';
import '../../../../core/error/failures.dart';
import '../../domain/entities/version.dart';
import '../../domain/repositories/splash_repository.dart';
import '../data_sources/local/splash_local_data_source.dart';
import '../data_sources/remote/splash_remote_data_source.dart';

@LazySingleton(as: SplashRepository)
class SplashRepositoryImp extends BaseRepositoryImpl
    implements SplashRepository {
  final SplashLocalDataSource _local;
  final SplashRemoteDataSource _remote;

  SplashRepositoryImp(
    this._local,
    this._remote, {
    required super.baseLocalDataSource,
    required super.networkInfo,
  });

  @override
  Future<Either<Failure, Version>> checkVersion() async =>
      await remoteRequest<Version>(
        (_) => _remote.checkVersion(),
      );

  @override
  Future<Either<Failure, bool>> checkAuth() async {
    try {
      final String token = baseLocalDataSource.token;
      return Right(token.isNotEmpty);
    } catch (e) {
      return const Left(CacheFailure());
    }
  }
}

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/data/base_repository.dart';
import '../../../../core/error/failures.dart';
import '../../domain/repositories/auth_repository.dart';
import '../data_sources/local/auth_local_data_source.dart';
import '../data_sources/remote/auth_remote_data_source.dart';

@LazySingleton(as: AuthRepository)
class AuthRepositoryImp extends BaseRepositoryImpl implements AuthRepository {
  final AuthLocalDataSource _local;
  final AuthRemoteDataSource _remote;

  AuthRepositoryImp(
    this._local,
    this._remote, {
    required super.baseLocalDataSource,
    required super.networkInfo,
  });

  @override
  Future<Either<Failure, void>> sendAuthData({
    required String name,
    required String password,
    required bool isLogin,
  }) async {
    final result = await remoteRequest(
      (_) => _remote.sendAuthData(
        name: name,
        password: password,
        isLogin: isLogin,
      ),
    );

    return result.fold(
      (failure) => Left(
        ServerFailure(
          error: failure.error,
        ),
      ),
      (user) async {
        await _local.storeUser(user);
        return const Right(null);
      },
    );
  }
}

import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import '../error/exceptions.dart';
import '../error/failures.dart';
import '../network/network_info.dart';

import 'base_local_data_source.dart';

typedef FutureEitherOr<T> = Future<Either<Failure, T>> Function();

typedef RemoteRequestBody<T> = Future<T> Function(String token);

typedef LocalRequestBody<T> = Future<T> Function();

abstract class BaseRepository {
  Future<Either<Failure, T>> localRequest<T>(
    LocalRequestBody<T> body,
  );

  Future<Either<Failure, T>> remoteRequest<T>(
    RemoteRequestBody<T> body,
  );
}

@LazySingleton(as: BaseRepository)
class BaseRepositoryImpl implements BaseRepository {
  final BaseLocalDataSource baseLocalDataSource;
  final NetworkInfo networkInfo;

  BaseRepositoryImpl({
    required this.baseLocalDataSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, T>> remoteRequest<T>(
    RemoteRequestBody<T> body,
  ) async {
    debugPrint('RemoteRequest\n');
    try {
      final T t = await body(baseLocalDataSource.token);
      return Right(t);
    } on HandledException catch (e) {
      return Left(
        ServerFailure(error: e.error),
      );
    }
  }

  @override
  Future<Either<Failure, T>> localRequest<T>(LocalRequestBody<T> body) async {
    debugPrint('LocalRequest\n');
    try {
      final T t = await body();
      return Right(t);
    } catch (e) {
      return const Left(
        CacheFailure(error: "Cache Failure"),
      );
    }
  }
}

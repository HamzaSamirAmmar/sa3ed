import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../error/failures.dart';

abstract class UseCase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}

class NoParams extends Equatable {
  @override
  List<Object> get props => [];
}

class PaginationParams extends Equatable {
  final int page;

  const PaginationParams({required this.page});

  @override
  List<Object?> get props => [page];
}

class PaginationWithGsmParams extends Equatable {
  final int page;

  final String gsm;

  const PaginationWithGsmParams({
    required this.page,
    required this.gsm,
  });

  @override
  List<Object?> get props => [page, gsm];
}

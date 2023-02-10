import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/version.dart';
import '../repositories/splash_repository.dart';

@lazySingleton
class CheckVersionUseCase implements UseCase<Version, NoParams> {
  final SplashRepository _repository;

  CheckVersionUseCase(this._repository);

  @override
  Future<Either<Failure, Version>> call(NoParams params) async =>
      await _repository.checkVersion();
}

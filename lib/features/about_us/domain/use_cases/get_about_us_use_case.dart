import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/about_us.dart';
import '../repositories/about_us_repository.dart';

@lazySingleton
class GetAboutUsUseCase implements UseCase<AboutUs, NoParams> {
  final AboutUsRepository _repository;

  GetAboutUsUseCase(this._repository);

  @override
  Future<Either<Failure, AboutUs>> call(NoParams params) async =>
      await _repository.getAboutUs();
}

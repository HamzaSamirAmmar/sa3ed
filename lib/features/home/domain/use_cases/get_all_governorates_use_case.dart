import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/governorate.dart';
import '../repositories/home_repository.dart';

@lazySingleton
class GetAllGovernoratesUseCase
    implements UseCase<List<Governorate>, NoParams> {
  final HomeRepository _repository;

  GetAllGovernoratesUseCase(this._repository);

  @override
  Future<Either<Failure, List<Governorate>>> call(NoParams params) async =>
      await _repository.getAllGovernorates();
}

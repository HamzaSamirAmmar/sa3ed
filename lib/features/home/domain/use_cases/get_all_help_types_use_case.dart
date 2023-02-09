import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/help_type.dart';
import '../repositories/home_repository.dart';

@lazySingleton
class GetAllHelpTypesUseCase implements UseCase<List<HelpType>, NoParams> {
  final HomeRepository _repository;

  GetAllHelpTypesUseCase(this._repository);

  @override
  Future<Either<Failure, List<HelpType>>> call(NoParams params) async =>
      await _repository.getAllHelpTypes();
}

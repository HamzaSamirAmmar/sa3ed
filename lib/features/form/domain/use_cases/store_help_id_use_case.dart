import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../../data/models/help_form_model.dart';
import '../entities/submitted_form.dart';
import '../repositories/form_repository.dart';

@lazySingleton
class StoreHelpIdUseCase implements UseCase<void, int> {
  final FormRepository _repository;

  StoreHelpIdUseCase(this._repository);

  @override
  Future<Either<Failure, void>> call(int params) async =>
      await _repository.storeHelpId(id: params);
}

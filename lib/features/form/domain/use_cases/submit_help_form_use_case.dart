import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../../data/models/help_form_model.dart';
import '../entities/submitted_form.dart';
import '../repositories/form_repository.dart';

@lazySingleton
class SubmitHelpFormUseCase
    implements UseCase<SubmittedForm, ParamsSubmitHelpFromUseCase> {
  final FormRepository _repository;

  SubmitHelpFormUseCase(this._repository);

  @override
  Future<Either<Failure, SubmittedForm>> call(
    ParamsSubmitHelpFromUseCase params,
  ) async =>
      await _repository.submitHelpForm(
        form: params.form,
        isOffer: params.isOffer,
      );
}

class ParamsSubmitHelpFromUseCase extends Equatable {
  final HelpFormModel form;

  final bool isOffer;

  const ParamsSubmitHelpFromUseCase({
    required this.form,
    required this.isOffer,
  });

  @override
  List<Object?> get props => [form, isOffer];
}

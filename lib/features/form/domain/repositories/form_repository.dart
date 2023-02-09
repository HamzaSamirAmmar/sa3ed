import 'package:dartz/dartz.dart';

import '../../../../core/data/base_repository.dart';
import '../../../../core/error/failures.dart';
import '../../data/models/help_form_model.dart';
import '../entities/submitted_form.dart';

abstract class FormRepository extends BaseRepository {
  Future<Either<Failure, SubmittedForm>> submitHelpForm({
    required HelpFormModel form,
    required bool isOffer,
  });

  Future<Either<Failure, void>> storeHelpId({
    required int id,
  });
}

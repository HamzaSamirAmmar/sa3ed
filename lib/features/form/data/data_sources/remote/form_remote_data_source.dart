import '../../../../../core/data/base_remote_data_source.dart';
import '../../models/help_form_model.dart';
import '../../models/submitted_form_model.dart';

abstract class FormRemoteDataSource extends BaseRemoteDataSource {
  Future<SubmittedFormModel> submitHelpForm({
    required HelpFormModel form,
    required bool isOffer,
  });
}

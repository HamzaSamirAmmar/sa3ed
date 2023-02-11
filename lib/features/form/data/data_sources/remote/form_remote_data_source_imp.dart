import 'package:injectable/injectable.dart';

import '../../../../../core/data/base_remote_data_source.dart';
import '../../../../../core/util/constants.dart';
import '../../models/help_form_model.dart';
import '../../models/submitted_form_model.dart';
import 'form_remote_data_source.dart';

@LazySingleton(as: FormRemoteDataSource)
class FormRemoteDataSourceImp extends BaseRemoteDataSourceImpl
    implements FormRemoteDataSource {
  FormRemoteDataSourceImp({required super.dio});

  @override
  Future<SubmittedFormModel> submitHelpForm({
    required HelpFormModel form,
    required bool isOffer,
    required String token,
  }) async =>
      await performPostRequest<SubmittedFormModel>(
        endpoint: isOffer ? Endpoints.offerHelp() : Endpoints.help(),
        data: RequestBody.submitHelpForm(form: form),
        token: token,
      );
}

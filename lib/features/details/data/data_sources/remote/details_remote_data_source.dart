import '../../../../../core/data/base_remote_data_source.dart';
import '../../../../../core/models/help_model.dart';

abstract class DetailsRemoteDataSource extends BaseRemoteDataSource {
  Future<HelpModel> getHelp({
    required int id,
    required bool isOffer,
  });
}

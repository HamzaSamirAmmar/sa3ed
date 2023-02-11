import '../../../../../core/data/base_remote_data_source.dart';
import '../../models/helpful_information_model.dart';

abstract class HelpfulInformationRemoteDataSource extends BaseRemoteDataSource {
  Future<List<HelpfulInformationModel>> getHelpfulInformation({
    required String token,
  });
}

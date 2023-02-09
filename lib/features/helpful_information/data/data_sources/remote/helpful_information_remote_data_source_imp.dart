import 'package:injectable/injectable.dart';
import 'package:sa3ed/core/util/constants.dart';

import '../../../../../core/data/base_remote_data_source.dart';
import '../../models/helpful_information_model.dart';
import 'helpful_information_remote_data_source.dart';

@LazySingleton(as: HelpfulInformationRemoteDataSource)
class HelpfulInformationRemoteDataSourceImp extends BaseRemoteDataSourceImpl
    implements HelpfulInformationRemoteDataSource {
  HelpfulInformationRemoteDataSourceImp({required super.dio});

  @override
  Future<HelpfulInformationModel> getHelpfulInformation() async =>
      await performGetRequest<HelpfulInformationModel>(
        endpoint: Endpoints.helpfulInformation,
      );
}

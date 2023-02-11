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
  Future<List<HelpfulInformationModel>> getHelpfulInformation({
    required String token,
  }) async =>
      await performGetListRequest<HelpfulInformationModel>(
        endpoint: Endpoints.helpfulInformation,
        token: token,
      );
}

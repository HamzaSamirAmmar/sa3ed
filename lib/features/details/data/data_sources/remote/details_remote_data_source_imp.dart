import 'package:injectable/injectable.dart';
import 'package:sa3ed/core/models/help_model.dart';
import 'package:sa3ed/core/util/constants.dart';

import '../../../../../core/data/base_remote_data_source.dart';
import 'details_remote_data_source.dart';

@LazySingleton(as: DetailsRemoteDataSource)
class DetailsRemoteDataSourceImp extends BaseRemoteDataSourceImpl
    implements DetailsRemoteDataSource {
  DetailsRemoteDataSourceImp({required super.dio});

  @override
  Future<HelpModel> getHelp({
    required int id,
    required bool isOffer,
  }) async =>
      await performGetRequest<HelpModel>(
        endpoint:
            isOffer ? Endpoints.offerHelp(id: id) : Endpoints.help(id: id),
      );
}

import 'package:injectable/injectable.dart';
import 'package:sa3ed/core/models/help_model.dart';
import 'package:sa3ed/core/util/constants.dart';

import '../../../../../core/data/base_remote_data_source.dart';
import 'history_remote_data_source.dart';

@LazySingleton(as: HistoryRemoteDataSource)
class HistoryRemoteDataSourceImp extends BaseRemoteDataSourceImpl
    implements HistoryRemoteDataSource {
  HistoryRemoteDataSourceImp({required super.dio});

  @override
  Future<List<HelpModel>> getHelpHistory({
    required List<String> ids,
  }) async =>
      await performGetListRequest<HelpModel>(
          endpoint: Endpoints.helpHistory,
          queryParameters: QueryParams.helpHistory(ids: ids));

  @override
  Future<void> deleteHelp({
    required int id,
    required bool isOffer,
  }) async =>
      await performDeleteRequest<void>(
        endpoint:
            isOffer ? Endpoints.offerHelp(id: id) : Endpoints.help(id: id),
      );
}

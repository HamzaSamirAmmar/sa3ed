import 'package:sa3ed/core/models/help_model.dart';

import '../../../../../core/data/base_remote_data_source.dart';

abstract class HistoryRemoteDataSource extends BaseRemoteDataSource {
  Future<List<HelpModel>> getHelpHistory({
    required String token,
  });

  Future<void> deleteHelp({
    required int id,
    required bool isOffer,
    required String token,
  });
}

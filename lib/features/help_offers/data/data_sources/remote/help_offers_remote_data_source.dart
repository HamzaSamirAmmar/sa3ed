import 'package:sa3ed/core/models/help_model.dart';

import '../../../../../core/data/base_remote_data_source.dart';
import '../../../../../core/models/summary_help_model.dart';
import '../../../../../core/network/models/paginate_response_model.dart';

abstract class HelpOffersRemoteDataSource extends BaseRemoteDataSource {
  Future<PaginateResponseModel<SummaryHelpModel>> getHelpOffers({
    required int page,
    required int? governorateId,
    required int? cityId,
    required int? helpTypeId,
  });
}

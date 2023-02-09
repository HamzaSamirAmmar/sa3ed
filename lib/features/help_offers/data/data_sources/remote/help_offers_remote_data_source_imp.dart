import 'package:injectable/injectable.dart';
import 'package:sa3ed/core/models/summary_help_model.dart';

import '../../../../../core/data/base_remote_data_source.dart';
import '../../../../../core/models/help_model.dart';
import '../../../../../core/network/models/paginate_response_model.dart';
import '../../../../../core/util/constants.dart';
import 'help_offers_remote_data_source.dart';

@LazySingleton(as: HelpOffersRemoteDataSource)
class HelpOffersRemoteDataSourceImp extends BaseRemoteDataSourceImpl
    implements HelpOffersRemoteDataSource {
  HelpOffersRemoteDataSourceImp({required super.dio});

  @override
  Future<PaginateResponseModel<SummaryHelpModel>> getHelpOffers({
    required int page,
    required int? governorateId,
    required int? cityId,
    required int? helpTypeId,
  }) async =>
      await performGetRequest<PaginateResponseModel<SummaryHelpModel>>(
        endpoint: Endpoints.offerHelp(),
        queryParameters: QueryParams.paginationParams(
          page: page,
          governorateId: governorateId,
          cityId: cityId,
          helpTypeId: helpTypeId,
        ),
      );
}

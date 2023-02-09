import 'package:injectable/injectable.dart';

import '../../../../../core/data/base_remote_data_source.dart';
import '../../../../../core/models/summary_help_model.dart';
import '../../../../../core/network/models/paginate_response_model.dart';
import '../../../../../core/util/constants.dart';
import 'help_requests_remote_data_source.dart';

@LazySingleton(as: HelpRequestsRemoteDataSource)
class HelpRequestsRemoteDataSourceImp extends BaseRemoteDataSourceImpl
    implements HelpRequestsRemoteDataSource {
  HelpRequestsRemoteDataSourceImp({required super.dio});

  @override
  Future<PaginateResponseModel<SummaryHelpModel>> getHelpRequests({
    required int page,
    required int? governorateId,
    required int? cityId,
    required int? helpTypeId,
  }) async =>
      await performGetRequest<PaginateResponseModel<SummaryHelpModel>>(
        endpoint: Endpoints.help(),
        queryParameters: QueryParams.paginationParams(
          page: page,
          governorateId: governorateId,
          cityId: cityId,
          helpTypeId: helpTypeId,
        ),
      );
}

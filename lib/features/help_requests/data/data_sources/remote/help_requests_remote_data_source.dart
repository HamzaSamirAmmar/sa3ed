import '../../../../../core/data/base_remote_data_source.dart';
import '../../../../../core/models/summary_help_model.dart';
import '../../../../../core/network/models/paginate_response_model.dart';

abstract class HelpRequestsRemoteDataSource extends BaseRemoteDataSource {
  Future<PaginateResponseModel<SummaryHelpModel>> getHelpRequests({
    required int page,
    required int? governorateId,
    required int? cityId,
    required int? helpTypeId,
    required String token,
  });
}

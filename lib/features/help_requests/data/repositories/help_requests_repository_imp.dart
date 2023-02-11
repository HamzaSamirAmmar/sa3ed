import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/data/base_repository.dart';
import '../../../../core/entities/paginate_list.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/models/summary_help_model.dart';
import '../../domain/repositories/help_requests_repository.dart';
import '../data_sources/local/help_requests_local_data_source.dart';
import '../data_sources/remote/help_requests_remote_data_source.dart';

@LazySingleton(as: HelpRequestsRepository)
class HelpRequestsRepositoryImp extends BaseRepositoryImpl
    implements HelpRequestsRepository {
  final HelpRequestsLocalDataSource _local;
  final HelpRequestsRemoteDataSource _remote;

  HelpRequestsRepositoryImp(
    this._local,
    this._remote, {
    required super.baseLocalDataSource,
    required super.networkInfo,
  });

  @override
  Future<Either<Failure, PaginateList<SummaryHelpModel>>> getHelpRequests({
    required int page,
    required int? governorateId,
    required int? cityId,
    required int? helpTypeId,
  }) async =>
      await remoteRequest<PaginateList<SummaryHelpModel>>(
        (token) async {
          final paginationModel = await _remote.getHelpRequests(
            page: page,
            governorateId: governorateId,
            cityId: cityId,
            helpTypeId: helpTypeId,
            token: token,
          );
          return PaginateList<SummaryHelpModel>(
            data: paginationModel.data,
            count: paginationModel.count,
          );
        },
      );
}

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/data/base_repository.dart';
import '../../../../core/entities/help.dart';
import '../../../../core/entities/paginate_list.dart';
import '../../../../core/error/failures.dart';
import '../../domain/repositories/help_offers_repository.dart';
import '../data_sources/local/help_offers_local_data_source.dart';
import '../data_sources/remote/help_offers_remote_data_source.dart';

@LazySingleton(as: HelpOffersRepository)
class HelpOffersRepositoryImp extends BaseRepositoryImpl
    implements HelpOffersRepository {
  final HelpOffersLocalDataSource _local;
  final HelpOffersRemoteDataSource _remote;

  HelpOffersRepositoryImp(
    this._local,
    this._remote, {
    required super.baseLocalDataSource,
    required super.networkInfo,
  });

  @override
  Future<Either<Failure, PaginateList<Help>>> getHelpOffers({
    required int page,
    required int? governorateId,
    required int? cityId,
    required int? helpTypeId,
  }) async =>
      await remoteRequest<PaginateList<Help>>(
        () async {
          final paginationModel = await _remote.getHelpOffers(
            page: page,
            governorateId: governorateId,
            cityId: cityId,
            helpTypeId: helpTypeId,
          );
          return PaginateList<Help>(
            data: paginationModel.data,
            count: paginationModel.count,
          );
        },
      );
}

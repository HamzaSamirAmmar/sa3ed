import 'package:injectable/injectable.dart';

import '../../../../core/data/base_repository.dart';
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
}

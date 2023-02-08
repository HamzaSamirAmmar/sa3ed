import 'package:injectable/injectable.dart';

import '../../../../core/data/base_repository.dart';
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
}

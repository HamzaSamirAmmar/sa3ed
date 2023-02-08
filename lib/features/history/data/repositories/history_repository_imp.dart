import 'package:injectable/injectable.dart';

import '../../../../core/data/base_repository.dart';
import '../../domain/repositories/history_repository.dart';
import '../data_sources/local/history_local_data_source.dart';
import '../data_sources/remote/history_remote_data_source.dart';

@LazySingleton(as: HistoryRepository)
class HistoryRepositoryImp extends BaseRepositoryImpl
    implements HistoryRepository {
  final HistoryLocalDataSource _local;
  final HistoryRemoteDataSource _remote;

  HistoryRepositoryImp(
    this._local,
    this._remote, {
    required super.baseLocalDataSource,
    required super.networkInfo,
  });
}

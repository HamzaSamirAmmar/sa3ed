import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/data/base_repository.dart';
import '../../../../core/entities/help.dart';
import '../../../../core/error/failures.dart';
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

  @override
  Future<Either<Failure, List<Help>>> getHelpHistory() async {
    final List<String> ids = await _local.getHelpIds();
    if (ids.isNotEmpty) {
      return await remoteRequest<List<Help>>(
        () => _remote.getHelpHistory(ids: ids),
      );
    } else {
      return const Right([]);
    }
  }

  @override
  Future<Either<Failure, void>> deleteHelp({
    required int id,
    required bool isOffer,
  }) async =>
      await remoteRequest<void>(
        () => _remote.deleteHelp(
          id: id,
          isOffer: isOffer,
        ),
      );
}

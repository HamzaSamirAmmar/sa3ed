import 'package:injectable/injectable.dart';
import 'package:sa3ed/features/details/data/data_sources/local/details_local_data_source.dart';

import '../../../../core/data/base_repository.dart';
import '../../domain/repositories/details_repository.dart';
import '../data_sources/remote/details_remote_data_source.dart';

@LazySingleton(as: DetailsRepository)
class DetailsRepositoryImp extends BaseRepositoryImpl
    implements DetailsRepository {
  final DetailsLocalDataSource _local;
  final DetailsRemoteDataSource _remote;

  DetailsRepositoryImp(
    this._local,
    this._remote, {
    required super.baseLocalDataSource,
    required super.networkInfo,
  });
}

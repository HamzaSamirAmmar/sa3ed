import 'package:injectable/injectable.dart';

import '../../../../core/data/base_repository.dart';
import '../../domain/repositories/home_repository.dart';
import '../data_sources/local/home_local_data_source.dart';
import '../data_sources/remote/home_remote_data_source.dart';

@LazySingleton(as: HomeRepository)
class HomeRepositoryImp extends BaseRepositoryImpl implements HomeRepository {
  final HomeLocalDataSource _local;
  final HomeRemoteDataSource _remote;

  HomeRepositoryImp(
    this._local,
    this._remote, {
    required super.baseLocalDataSource,
    required super.networkInfo,
  });
}

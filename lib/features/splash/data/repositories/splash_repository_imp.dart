import 'package:injectable/injectable.dart';

import '../../../../core/data/base_repository.dart';
import '../../domain/repositories/splash_repository.dart';
import '../data_sources/local/splash_local_data_source.dart';
import '../data_sources/remote/splash_remote_data_source.dart';

@LazySingleton(as: SplashRepository)
class SplashRepositoryImp extends BaseRepositoryImpl
    implements SplashRepository {
  final SplashLocalDataSource _local;
  final SplashRemoteDataSource _remote;

  SplashRepositoryImp(
    this._local,
    this._remote, {
    required super.baseLocalDataSource,
    required super.networkInfo,
  });
}

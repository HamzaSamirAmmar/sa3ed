import 'package:injectable/injectable.dart';

import '../../../../core/data/base_repository.dart';
import '../../domain/repositories/about_us_repository.dart';
import '../data_sources/local/about_us_local_data_source.dart';
import '../data_sources/remote/about_us_remote_data_source.dart';

@LazySingleton(as: AboutUsRepository)
class AboutUsRepositoryImp extends BaseRepositoryImpl
    implements AboutUsRepository {
  final AboutUsLocalDataSource _local;
  final AboutUsRemoteDataSource _remote;

  AboutUsRepositoryImp(
    this._local,
    this._remote, {
    required super.baseLocalDataSource,
    required super.networkInfo,
  });
}

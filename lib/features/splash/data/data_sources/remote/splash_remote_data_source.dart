import '../../../../../core/data/base_remote_data_source.dart';
import '../../models/version_model.dart';

abstract class SplashRemoteDataSource extends BaseRemoteDataSource {
  Future<VersionModel> checkVersion();
}

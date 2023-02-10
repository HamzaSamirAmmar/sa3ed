import '../../../../../core/data/base_remote_data_source.dart';
import '../../models/about_us_model.dart';

abstract class AboutUsRemoteDataSource extends BaseRemoteDataSource {
  Future<AboutUsModel> getAboutUs();
}

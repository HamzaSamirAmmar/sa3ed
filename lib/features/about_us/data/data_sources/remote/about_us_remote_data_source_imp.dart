import 'package:injectable/injectable.dart';
import 'package:sa3ed/core/util/constants.dart';
import 'package:sa3ed/features/about_us/data/models/about_us_model.dart';

import '../../../../../core/data/base_remote_data_source.dart';
import 'about_us_remote_data_source.dart';

@LazySingleton(as: AboutUsRemoteDataSource)
class AboutUsRemoteDataSourceImp extends BaseRemoteDataSourceImpl
    implements AboutUsRemoteDataSource {
  AboutUsRemoteDataSourceImp({required super.dio});

  @override
  Future<AboutUsModel> getAboutUs({
    required String token,
  }) async =>
      await performGetRequest<AboutUsModel>(
        endpoint: Endpoints.aboutUs,
        token: token,
      );
}

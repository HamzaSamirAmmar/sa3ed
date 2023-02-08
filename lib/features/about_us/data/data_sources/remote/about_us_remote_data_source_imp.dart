import 'package:injectable/injectable.dart';

import '../../../../../core/data/base_remote_data_source.dart';
import 'about_us_remote_data_source.dart';

@LazySingleton(as: AboutUsRemoteDataSource)
class AboutUsRemoteDataSourceImp extends BaseRemoteDataSourceImpl
    implements AboutUsRemoteDataSource {
  AboutUsRemoteDataSourceImp({required super.dio});
}

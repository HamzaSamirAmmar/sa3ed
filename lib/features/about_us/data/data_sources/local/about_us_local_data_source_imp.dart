import 'package:injectable/injectable.dart';

import '../../../../../core/data/base_local_data_source.dart';
import 'about_us_local_data_source.dart';

@LazySingleton(as: AboutUsLocalDataSource)
class AboutUsLocalDataSourceImp extends BaseLocalDataSourceImp
    implements AboutUsLocalDataSource {
  AboutUsLocalDataSourceImp({
    required super.sharedPreferences,
  });
}

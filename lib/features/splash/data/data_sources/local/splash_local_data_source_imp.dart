import 'package:injectable/injectable.dart';

import '../../../../../core/data/base_local_data_source.dart';
import 'splash_local_data_source.dart';

@LazySingleton(as: SplashLocalDataSource)
class SplashLocalDataSourceImp extends BaseLocalDataSourceImp
    implements SplashLocalDataSource {
  SplashLocalDataSourceImp({required super.sharedPreferences});
}

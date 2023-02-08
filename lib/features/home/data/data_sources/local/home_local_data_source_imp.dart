import 'package:injectable/injectable.dart';

import '../../../../../core/data/base_local_data_source.dart';
import 'home_local_data_source.dart';

@LazySingleton(as: HomeLocalDataSource)
class HomeLocalDataSourceImp extends BaseLocalDataSourceImp
    implements HomeLocalDataSource {
  HomeLocalDataSourceImp({required super.sharedPreferences});
}

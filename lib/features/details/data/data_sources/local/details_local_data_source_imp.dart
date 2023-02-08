import 'package:injectable/injectable.dart';

import '../../../../../core/data/base_local_data_source.dart';
import 'details_local_data_source.dart';

@LazySingleton(as: DetailsLocalDataSource)
class DetailsLocalDataSourceImp extends BaseLocalDataSourceImp
    implements DetailsLocalDataSource {
  DetailsLocalDataSourceImp({required super.sharedPreferences});
}

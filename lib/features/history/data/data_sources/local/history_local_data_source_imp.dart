import 'package:injectable/injectable.dart';

import '../../../../../core/data/base_local_data_source.dart';
import 'history_local_data_source.dart';

@LazySingleton(as: HistoryLocalDataSource)
class HistoryLocalDataSourceImp extends BaseLocalDataSourceImp
    implements HistoryLocalDataSource {
  HistoryLocalDataSourceImp({required super.sharedPreferences});
}

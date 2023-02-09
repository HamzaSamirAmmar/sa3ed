import 'package:injectable/injectable.dart';

import '../../../../../core/data/base_local_data_source.dart';
import '../../../../../core/util/constants.dart';
import 'history_local_data_source.dart';

@LazySingleton(as: HistoryLocalDataSource)
class HistoryLocalDataSourceImp extends BaseLocalDataSourceImp
    implements HistoryLocalDataSource {
  HistoryLocalDataSourceImp({required super.sharedPreferences});

  @override
  Future<List<String>> getHelpIds() async {
    final List<String>? prevIds = sharedPreferences.getStringList(
      SharedPreferencesKeys.postIds,
    );
    return prevIds ?? [];
  }
}

import 'package:injectable/injectable.dart';

import '../../../../../core/data/base_local_data_source.dart';
import '../../../../../core/util/constants.dart';
import 'form_local_data_source.dart';

@LazySingleton(as: FormLocalDataSource)
class FormLocalDataSourceImp extends BaseLocalDataSourceImp
    implements FormLocalDataSource {
  FormLocalDataSourceImp({required super.sharedPreferences});

  @override
  Future<void>  storeHelpId({
    required int id,
  }) async {
    final List<String>? prevIds = sharedPreferences.getStringList(
      SharedPreferencesKeys.postIds,
    );
    if (prevIds == null) {
      await sharedPreferences.setStringList(
        SharedPreferencesKeys.postIds,
        [id.toString()],
      );
    } else {
      prevIds.add(id.toString());
      await sharedPreferences.setStringList(
        SharedPreferencesKeys.postIds,
        prevIds,
      );
    }
  }
}

import 'package:injectable/injectable.dart';

import '../../../../../core/data/base_local_data_source.dart';
import '../../../../../core/util/constants.dart';
import '../../models/user_model.dart';
import 'auth_local_data_source.dart';

@LazySingleton(as: AuthLocalDataSource)
class AuthLocalDataSourceImp extends BaseLocalDataSourceImp
    implements AuthLocalDataSource {
  AuthLocalDataSourceImp({required super.sharedPreferences});

  @override
  Future<void> storeUser(UserModel user) async {
    await sharedPreferences.setString(
      SharedPreferencesKeys.token,
      user.token,
    );
    await sharedPreferences.setString(
      SharedPreferencesKeys.username,
      user.username,
    );
    await sharedPreferences.setInt(
      SharedPreferencesKeys.userid,
      user.id,
    );
  }
}

import 'package:injectable/injectable.dart';
import 'package:sa3ed/core/util/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class BaseLocalDataSource {
  String get token;

  Future<void> logout();
}

@LazySingleton(as: BaseLocalDataSource)
class BaseLocalDataSourceImp implements BaseLocalDataSource {
  final SharedPreferences sharedPreferences;

  BaseLocalDataSourceImp({
    required this.sharedPreferences,
  });

  @override
  String get token =>
      sharedPreferences.getString(SharedPreferencesKeys.token) ?? "";

  @override
  Future<void> logout() async {
    await sharedPreferences.clear();
  }
}

import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class BaseLocalDataSource {}

@LazySingleton(as: BaseLocalDataSource)
class BaseLocalDataSourceImp implements BaseLocalDataSource {
  final SharedPreferences sharedPreferences;

  BaseLocalDataSourceImp({
    required this.sharedPreferences,
  });
}

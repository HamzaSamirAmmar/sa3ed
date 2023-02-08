import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../util/constants.dart';
import 'web_local_storage.dart';

abstract class BaseLocalDataSource {}

@LazySingleton(as: BaseLocalDataSource)
class BaseLocalDataSourceImp implements BaseLocalDataSource {
  final SharedPreferences sharedPreferences;

  BaseLocalDataSourceImp({
    required this.sharedPreferences,
  });
}

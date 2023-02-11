import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:sa3ed/core/util/constants.dart';
import 'package:sa3ed/features/home/data/models/governorate_model.dart';

import '../../../../../core/data/base_local_data_source.dart';
import 'home_local_data_source.dart';

@LazySingleton(as: HomeLocalDataSource)
class HomeLocalDataSourceImp extends BaseLocalDataSourceImp
    implements HomeLocalDataSource {
  HomeLocalDataSourceImp({required super.sharedPreferences});

  @override
  Future<List<GovernorateModel>> getGovernorates() async {
    final result = sharedPreferences.getStringList(
      SharedPreferencesKeys.governorates,
    );
    if (result != null) {
      List<GovernorateModel> governorates = [];
      for (int i = 0; i < result.length; i++) {
        governorates.add(
          GovernorateModel.fromJson(
            json.decode(result[i]),
          ),
        );
      }
      return governorates;
    } else {
      return [];
    }
  }

  @override
  Future<void> storeGovernorates({
    required List<GovernorateModel> governorates,
  }) async {
    List<String> storedGovernorates = [];
    for (int i = 0; i < governorates.length; i++) {
      storedGovernorates.add(
        json.encode(
          governorates[i].toJson(),
        ),
      );
    }
    await sharedPreferences.setStringList(
      SharedPreferencesKeys.governorates,
      storedGovernorates,
    );
  }
}

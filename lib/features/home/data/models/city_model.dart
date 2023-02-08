import 'package:json_annotation/json_annotation.dart';

import '../../domain/entities/city.dart';

part 'city_model.g.dart';

@JsonSerializable()
class CityModel extends City {
  static const String className = "CityModel";

  const CityModel({
    required super.id,
    required super.name,
  });

  factory CityModel.fromJson(Map<String, dynamic> json) =>
      _$CityModelFromJson(json);
}

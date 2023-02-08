import 'package:json_annotation/json_annotation.dart';
import 'package:sa3ed/features/home/domain/entities/governorate.dart';

import '../../domain/entities/city.dart';
import 'city_model.dart';

part 'governorate_model.g.dart';

@JsonSerializable()
class GovernorateModel extends Governorate {
  static const String className = "GovernorateModel";

  @JsonKey(name: "city_area")
  final List<CityModel> cities;

  const GovernorateModel({
    required super.id,
    required super.name,
    required this.cities,
  }) : super(
          cities: cities,
        );

  factory GovernorateModel.fromJson(Map<String, dynamic> json) =>
      _$GovernorateModelFromJson(json);
}

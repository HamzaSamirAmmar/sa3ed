import 'package:json_annotation/json_annotation.dart';

import '../entities/help.dart';

part 'help_model.g.dart';

@JsonSerializable()
class HelpModel extends Help {
  static const String className = "HelpModel";

  const HelpModel({
    required super.id,
    required super.cityId,
    required super.helpType,
    required super.areaId,
    required super.locationDetails,
    required super.name,
    required super.phone,
    required super.notes,
    required super.movable,
    required super.isOffer,
    required super.createdAt,
  });

  factory HelpModel.fromJson(Map<String, dynamic> json) =>
      _$HelpModelFromJson(json);
}

import 'package:json_annotation/json_annotation.dart';

part 'help_form_model.g.dart';

@JsonSerializable()
class HelpFormModel {
  static const String className = "HelpFormModel";

  final String name;

  final String phone;

  @JsonKey(name: "help_type")
  final int helpType;

  @JsonKey(name: "id_city")
  final int cityId;

  @JsonKey(name: "id_area")
  final int areaId;

  @JsonKey(name: "location_details")
  final String locationDetails;

  @JsonKey(name: "notice")
  final String notes;

  @JsonKey(name: "moveable")
  final bool movable;

  const HelpFormModel({
    required this.cityId,
    required this.helpType,
    required this.areaId,
    required this.locationDetails,
    required this.name,
    required this.phone,
    required this.notes,
    required this.movable,
  });

  factory HelpFormModel.fromJson(Map<String, dynamic> json) =>
      _$HelpFormModelFromJson(json);

  Map<String, dynamic> toJson() => _$HelpFormModelToJson(this);
}

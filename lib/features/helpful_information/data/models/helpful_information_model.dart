import 'package:json_annotation/json_annotation.dart';

import '../../domain/entities/helpful_information.dart';

part 'helpful_information_model.g.dart';

@JsonSerializable()
class HelpfulInformationModel extends HelpfulInformation {
  static const String className = "HelpfulInformationModel";

  const HelpfulInformationModel({
    required super.id,
    required super.description,
    required super.governorateId,
    required super.infoType,
    required super.locationDetails,
    required super.name,
  });

  factory HelpfulInformationModel.fromJson(Map<String, dynamic> json) =>
      _$HelpfulInformationModelFromJson(json);
}

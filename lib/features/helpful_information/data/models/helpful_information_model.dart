import 'package:json_annotation/json_annotation.dart';

import '../../domain/entities/helpful_information.dart';

part '../../../help_requests/data/models/submitted_form_model.g.dart';

@JsonSerializable()
class HelpfulInformationModel extends HelpfulInformation {
  static const String className = "HelpfulInformationModel";

  const HelpfulInformationModel({required super.html});

  factory HelpfulInformationModel.fromJson(Map<String, dynamic> json) =>
      _$HelpfulInformationModelFromJson(json);
}

import 'package:json_annotation/json_annotation.dart';

import '../entities/summary_help.dart';

part 'summary_help_model.g.dart';

@JsonSerializable()
class SummaryHelpModel extends SummaryHelp {
  static const String className = "SummaryHelpModel";

  const SummaryHelpModel({
    required super.id,
    required super.cityId,
    required super.helpType,
    required super.areaId,
    required super.createdAt,
  });

  factory SummaryHelpModel.fromJson(Map<String, dynamic> json) =>
      _$SummaryHelpModelFromJson(json);
}

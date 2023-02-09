import 'package:json_annotation/json_annotation.dart';

import '../../domain/entities/help_type.dart';

part 'help_type_model.g.dart';

@JsonSerializable()
class HelpTypeModel extends HelpType {
  static const String className = "HelpTypeModel";

  const HelpTypeModel({
    required super.id,
    required super.name,
  });

  factory HelpTypeModel.fromJson(Map<String, dynamic> json) =>
      _$HelpTypeModelFromJson(json);
}

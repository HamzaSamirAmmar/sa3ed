import 'package:json_annotation/json_annotation.dart';

import '../../domain/entities/submitted_form.dart';

part 'submitted_form_model.g.dart';

@JsonSerializable()
class SubmittedFormModel extends SubmittedForm {
  static const String className = "SubmittedFormModel";

  const SubmittedFormModel({required super.id});

  factory SubmittedFormModel.fromJson(Map<String, dynamic> json) =>
      _$SubmittedFormModelFromJson(json);
}

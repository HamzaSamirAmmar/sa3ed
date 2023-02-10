import 'package:json_annotation/json_annotation.dart';

import '../../domain/entities/about_us.dart';

part 'about_us_model.g.dart';

@JsonSerializable()
class AboutUsModel extends AboutUs {
  static const String className = "AboutUsModel";

  const AboutUsModel({required super.html});

  factory AboutUsModel.fromJson(Map<String, dynamic> json) =>
      _$AboutUsModelFromJson(json);
}

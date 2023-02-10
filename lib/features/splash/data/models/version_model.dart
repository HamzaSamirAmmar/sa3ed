import 'package:json_annotation/json_annotation.dart';

import '../../domain/entities/version.dart';
part 'version_model.g.dart';

@JsonSerializable()
class VersionModel extends Version {
  static const String className = "VersionModel";

  const VersionModel({
    required super.apkUrl,
    required super.baseUrl,
    required super.version,
  });

  factory VersionModel.fromJson(Map<String, dynamic> json) =>
      _$VersionModelFromJson(json);
}

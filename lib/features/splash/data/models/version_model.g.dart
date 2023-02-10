// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'version_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VersionModel _$VersionModelFromJson(Map<String, dynamic> json) => VersionModel(
      apkUrl: json['apk_url'] as String,
      baseUrl: json['base_url'] as String,
      version: json['version'] as String,
    );

Map<String, dynamic> _$VersionModelToJson(VersionModel instance) =>
    <String, dynamic>{
      'version': instance.version,
      'base_url': instance.baseUrl,
      'apk_url': instance.apkUrl,
    };

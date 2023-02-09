// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'summary_help_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SummaryHelpModel _$SummaryHelpModelFromJson(Map<String, dynamic> json) =>
    SummaryHelpModel(
      id: json['id'] as int,
      cityId: json['id_city'] as int,
      helpType: json['help_type'] as int,
      areaId: json['id_area'] as int,
      createdAt: json['created_at'] as String,
    );

Map<String, dynamic> _$SummaryHelpModelToJson(SummaryHelpModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'id_city': instance.cityId,
      'id_area': instance.areaId,
      'help_type': instance.helpType,
      'created_at': instance.createdAt,
    };

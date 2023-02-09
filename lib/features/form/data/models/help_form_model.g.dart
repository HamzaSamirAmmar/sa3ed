// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'help_form_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HelpFormModel _$HelpFormModelFromJson(Map<String, dynamic> json) =>
    HelpFormModel(
      cityId: json['id_city'] as int,
      helpType: json['help_type'] as int,
      areaId: json['id_area'] as int,
      locationDetails: json['location_details'] as String,
      name: json['name'] as String,
      phone: json['phone'] as String,
      notes: json['notice'] as String,
      movable: json['moveable'] as bool,
    );

Map<String, dynamic> _$HelpFormModelToJson(HelpFormModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'phone': instance.phone,
      'help_type': instance.helpType,
      'id_city': instance.cityId,
      'id_area': instance.areaId,
      'location_details': instance.locationDetails,
      'notice': instance.notes,
      'moveable': instance.movable,
    };

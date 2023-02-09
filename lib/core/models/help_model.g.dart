// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'help_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HelpModel _$HelpModelFromJson(Map<String, dynamic> json) => HelpModel(
      id: json['id'] as int,
      cityId: json['id_city'] as int,
      helpType: json['help_type'] as int,
      areaId: json['id_area'] as int,
      locationDetails: json['location_details'] as String,
      name: json['name'] as String,
      phone: json['phone'] as String,
      notes: json['notice'] as String,
      movable: json['moveable'] as bool,
      isOffer: json['is_offer'] as bool,
      createdAt: json['created_at'] as String,
    );

Map<String, dynamic> _$HelpModelToJson(HelpModel instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'phone': instance.phone,
      'help_type': instance.helpType,
      'id_city': instance.cityId,
      'id_area': instance.areaId,
      'location_details': instance.locationDetails,
      'notice': instance.notes,
      'moveable': instance.movable,
      'is_offer': instance.isOffer,
      'created_at': instance.createdAt,
    };

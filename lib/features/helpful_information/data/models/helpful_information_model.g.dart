// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'helpful_information_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HelpfulInformationModel _$HelpfulInformationModelFromJson(
        Map<String, dynamic> json) =>
    HelpfulInformationModel(
      id: json['id'] as int,
      description: json['description'] as String,
      governorateId: json['id_city'] as int,
      infoType: json['info_type'] as int,
      locationDetails: json['location_details'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$HelpfulInformationModelToJson(
        HelpfulInformationModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'id_city': instance.governorateId,
      'info_type': instance.infoType,
      'location_details': instance.locationDetails,
    };

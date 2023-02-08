// GENERATED CODE - DO NOT MODIFY BY HAND

part of base_response_model;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponseModel<T> _$BaseResponseModelFromJson<T>(
        Map<String, dynamic> json) =>
    BaseResponseModel<T>(
      status: json['status'] as int?,
      message: json['message'] as String?,
      data: _dataFromJson(json['data']),
    );

Map<String, dynamic> _$BaseResponseModelToJson<T>(
        BaseResponseModel<T> instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': _dataToJson(instance.data),
    };

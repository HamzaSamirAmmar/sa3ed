// GENERATED CODE - DO NOT MODIFY BY HAND

part of base_response_model;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponseModel<T> _$BaseResponseModelFromJson<T>(
        Map<String, dynamic> json) =>
    BaseResponseModel<T>(
      status: json['status'] as bool?,
      message: json['msg'] as String?,
      data: _dataFromJson(json['data']),
      code: json['code'] as int?,
    );

Map<String, dynamic> _$BaseResponseModelToJson<T>(
        BaseResponseModel<T> instance) =>
    <String, dynamic>{
      'status': instance.status,
      'msg': instance.message,
      'code': instance.code,
      'data': _dataToJson(instance.data),
    };

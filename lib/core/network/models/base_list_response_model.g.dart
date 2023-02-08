// GENERATED CODE - DO NOT MODIFY BY HAND

part of base_list_response_model;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseListResponseModel<T> _$BaseListResponseModelFromJson<T>(
        Map<String, dynamic> json) =>
    BaseListResponseModel<T>(
      status: json['status'] as bool?,
      message: json['msg'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => _Converter<T>().fromJson(e as Object))
          .toList(),
      code: json['code'] as int?,
    );

Map<String, dynamic> _$BaseListResponseModelToJson<T>(
        BaseListResponseModel<T> instance) =>
    <String, dynamic>{
      'status': instance.status,
      'msg': instance.message,
      'code': instance.code,
      'data': instance.data?.map(_Converter<T>().toJson).toList(),
    };

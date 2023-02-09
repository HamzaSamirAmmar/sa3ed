library base_list_response_model;

import 'package:flutter/cupertino.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../../features/home/data/models/city_model.dart';
import '../../../features/home/data/models/governorate_model.dart';
import '../../../features/home/data/models/help_type_model.dart';
import '../../error/exceptions.dart';

part 'base_list_response_model.g.dart';

@JsonSerializable()
class BaseListResponseModel<T> {
  @JsonKey(name: 'status')
  final bool? status;

  @JsonKey(name: 'msg')
  final String? message;

  @JsonKey(name: 'code')
  final int? code;

  @JsonKey(name: 'data')
  @_Converter()
  final List<T>? data;

  BaseListResponseModel({
    this.status,
    this.message,
    this.data,
    this.code,
  });

  factory BaseListResponseModel.fromJson(Map<String, dynamic> json) =>
      _$BaseListResponseModelFromJson<T>(json);
}

class _Converter<T> implements JsonConverter<T, Object> {
  const _Converter();

  @override
  T fromJson(Object json) {
    debugPrint('t is ${T.toString()}');

    if (json is Map<String, dynamic>) {
      /*** CityModel ***/
      if (T.toString() == CityModel.className) {
        return CityModel.fromJson(json) as T;
      }

      /*** GovernorateModel ***/
      if (T.toString() == GovernorateModel.className) {
        return GovernorateModel.fromJson(json) as T;
      }

      /*** HelpTypeModel ***/
      if (T.toString() == HelpTypeModel.className) {
        return HelpTypeModel.fromJson(json) as T;
      }
    }

    debugPrint('_dataFromJson: parse error (BaseListResponseModel)');
    throw ParseException();
  }

  @override
  Object toJson(T object) {
    // This will only work if `object` is a native JSON type:
    //   num, String, bool, null, etc
    // Or if it has a `toJson()` function`.
    return object!;
  }
}

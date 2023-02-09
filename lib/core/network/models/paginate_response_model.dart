library paginate_response_model;

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../entities/paginate_list.dart';
import '../../models/summary_help_model.dart';

part 'paginate_response_model.g.dart';

@JsonSerializable()
class PaginateResponseModel<T extends Equatable> extends PaginateList {
  @_Converter()
  final List<T> data;

  const PaginateResponseModel({
    required super.count,
    required this.data,
  }) : super(
          data: data,
        );

  factory PaginateResponseModel.fromJson(Map<String, dynamic> json) =>
      _$PaginateResponseModelFromJson<T>(json);
}

class _Converter<T> implements JsonConverter<T, Object?> {
  const _Converter();

  @override
  T fromJson(Object? json) {
    debugPrint('T is ${T.toString()}');

    if (json is Map<String, dynamic>) {
      /*** SummeryHelpModel ***/
      if (T.toString() == SummaryHelpModel.className) {
        return SummaryHelpModel.fromJson(json) as T;
      }
    }

    throw Exception('parse error');
  }

  @override
  Object? toJson(T object) {
    // This will only work if `object` is a native JSON type:
    //   num, String, bool, null, etc
    // Or if it has a `toJson()` function`.
    return object!;
  }
}

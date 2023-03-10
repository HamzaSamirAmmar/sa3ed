library base_response_model;

import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:sa3ed/core/models/summary_help_model.dart';
import 'package:sa3ed/core/network/models/paginate_response_model.dart';
import 'package:sa3ed/features/form/data/models/submitted_form_model.dart';

import '../../../features/about_us/data/models/about_us_model.dart';
import '../../../features/auth/data/models/user_model.dart';
import '../../../features/helpful_information/data/models/helpful_information_model.dart';
import '../../../features/splash/data/models/version_model.dart';
import '../../error/exceptions.dart';
import '../../models/help_model.dart';

part 'base_response_model.g.dart';

@JsonSerializable()
class BaseResponseModel<T> {
  @JsonKey(name: 'status')
  final bool? status;

  @JsonKey(name: 'msg')
  final String? message;

  @JsonKey(name: 'code')
  final int? code;

  @JsonKey(name: 'data', fromJson: _dataFromJson, toJson: _dataToJson)
  final T? data;

  BaseResponseModel({
    this.status,
    this.message,
    this.data,
    this.code,
  });

  factory BaseResponseModel.fromJson(Map<String, dynamic> json) {
    return _$BaseResponseModelFromJson<T>(json);
  }
}

T? _dataFromJson<T>(Object? data) {
  debugPrint('_dataFromJson: T is ${T.toString()}\n');

  /// if the data is null or the data is not important
  if (data == null ||
      T.toString() == 'void' ||
      (data is List<dynamic> && data.isEmpty)) {
    debugPrint('BaseResponseModel: Data is null\n');
    return null;
  }

  /// else if the data not null so it should be a Map
  else if (data is Map<String, dynamic>) {
    /*** SubmittedFormModel  ***/
    if (T.toString() == SubmittedFormModel.className) {
      return SubmittedFormModel.fromJson(data) as T;
    }

    /*** UserModel  ***/
    if (T.toString() == UserModel.className) {
      return UserModel.fromJson(data) as T;
    }

    /*** HelpModel  ***/
    if (T.toString() == HelpModel.className) {
      return HelpModel.fromJson(data) as T;
    }

    /*** AboutUsModel  ***/
    if (T.toString() == AboutUsModel.className) {
      return AboutUsModel.fromJson(data) as T;
    }

    /*** VersionModel  ***/
    if (T.toString() == VersionModel.className) {
      return VersionModel.fromJson(data) as T;
    }

    /*** HelpfulInformationModel  ***/
    if (T.toString() == HelpfulInformationModel.className) {
      return HelpfulInformationModel.fromJson(data) as T;
    }

    /*** SummaryHelpModel ***/
    else if (T.toString() == SummaryHelpModel.paginateName) {
      return PaginateResponseModel<SummaryHelpModel>.fromJson(data) as T;
    }
  }

  debugPrint('_dataFromJson: parse error (BaseResponseModel)');
  throw ParseException();
}

Map<String, dynamic> _dataToJson<T, S, U>(T input, [S? other1, U? other2]) => {
      'data': input,
    };

import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../features/form/data/models/help_form_model.dart';

class Endpoints {
  static const String baseUrl = "https://api.sa-3ed.com";

  static const String governorates = "/api/location/all";

  static const String login = "/api/auth/login";

  static const String register = "/api/auth/signup";

  static const String helpTypes = "/api/helpinfo/types";

  static const String helpfulInformation = "/api/importantinfo";

  static const String helpHistory = "/api/helpinfo/helps/me";

  static const String version = "/api/settings";

  static const String aboutUs = "/api/info/aboutus";

  static String help({int? id}) => "/api/help${(id != null) ? "/$id" : ""}";

  static String offerHelp({int? id}) =>
      "/api/offerHelp${(id != null) ? "/$id" : ""}";
}

class SharedPreferencesKeys {
  static const postIds = "post_ids";
  static const token = "token";
  static const username = "username";
  static const governorates = "governorates";
  static const userid = "userid";
}

class IconsAssets {
  static const String logo = "assets/icons/logo.png";
  static const String donation = "assets/icons/donation-support.png";
  static const String handsSupport = "assets/icons/helping-hands-support.png";
  static const String houseInsurance = "assets/icons/house-insurance.png";
  static const String handsSupportWithLove =
      "assets/icons/helping-hands-support-with-love.png";
}

class QueryParams {
  static Map<String, dynamic> paginationParams({
    required int page,
    required int? governorateId,
    required int? cityId,
    required int? helpTypeId,
  }) {
    return {
      "page": page,
      if (governorateId != null) "id_city": governorateId,
      if (cityId != null) "id_area": cityId,
      if (helpTypeId != null) "help_type": helpTypeId,
    };
  }

  static Map<String, dynamic> helpHistory({
    required List<String> ids,
  }) {
    List<int> convertedIds = List.generate(
      ids.length,
      (index) => int.parse(
        ids[index],
      ),
    );
    return {
      "ids": convertedIds,
    };
  }
}

class RequestBody {
  /// ** submitHelpForm ** ///
  static String submitHelpForm({
    required HelpFormModel form,
  }) {
    return json.encode(
      {
        'name': form.name,
        'phone': form.phone,
        'help_type': form.helpType,
        'id_city': form.cityId,
        if (form.areaId != null) 'id_area': form.areaId,
        'location_details': form.locationDetails,
        'notice': form.notes,
        'moveable': form.movable,
      },
    );
  }

  /// ** sendAuthData ** ///
  static String sendAuthData({
    required String name,
    required String password,
  }) {
    return json.encode(
      {
        "username": name,
        "password": password,
      },
    );
  }
}

class GetOptions {
  static Options options = Options();

  static Options getOptionsWithToken(
    String? token, {
    String language = "ar",
  }) {
    if (token != null && token.isNotEmpty) {
      options.headers = {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'x-auth-token': token,
        'Accept-Language': language,
      };
    } else {
      options.headers = {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'Accept-Language': language,
      };
    }
    return options;
  }
}

class ErrorMessage {
  static const String somethingWentWrong =
      "خطأ غير متوقع، يرجى التحقق من إتصالك بالانترنت";
  static const String error400 = "الطلب المرسل غير صحيح";
  static const String error401 = "فشلت عملية المصادقة مع الخادم";
  static const String error403 = "ليس لديك اذن للوصول إلى المورد المطلوب";
  static const String error404 = "لم يتم العثور على العنوان المطلوب";
  static const String error412 = "البيانات المدخلة غير صحيحة";
  static const String error500 = "حدث خطأ عام في الخادم";
  static const String error503 = "الخدمة المطلوبة غير متاحة";
}

void message({
  required BuildContext context,
  required String message,
  required bool isError,
  required bloc,
  bool statusChanged = false,
}) {
  // For debug only
  debugPrint('Message is "$message"');
  if (bloc != null) {
    debugPrint(bloc.state.toString());
  }
  // ************* //

  if (message.isNotEmpty) {
    if (isError) {
      Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        backgroundColor: Colors.red.withOpacity(1.0),
        textColor: Colors.white,
        fontSize: 16.0.sp,
      );
    }

    /// if isn't error, display message with different background color
    else {
      Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        // backgroundColor: Theme.of(context).colorScheme.secondary,
        backgroundColor: Colors.teal,
        textColor: Colors.white,
        fontSize: 16.0.sp,
      );
    }

    /// set message to '' (empty), for avoid print it again when state is changed
    /// or change the value of 'statusChanged' to false
    if (bloc != null) {
      bloc.clearMessage();
    }
  }
}

String get testText =>
    'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et';

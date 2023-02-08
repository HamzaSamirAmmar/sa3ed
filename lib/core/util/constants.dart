import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Endpoints {
  static const String baseUrl = "http://192.168.31.149:8761";
}

class LocalStorageKeys {
  static const postIds = "post_ids";
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
    int size = 10,
    String? name,
  }) {
    return {
      "is_pagination": 1,
      "size": size,
      "page": page,
      "name": name,
    };
  }
}

class RequestBody {
  /// ** Signup ** ///
  static FormData signUp({
    required String gsm,
  }) {
    return FormData.fromMap({
      "gsm": gsm,
    });
  }
}

class GetOptions {
  static Options options = Options();

  static Options getOptionsWithToken(
    String? token, {
    String language = "en",
    bool isGuest = false,
  }) {
    if (token != null && token.isNotEmpty) {
      options.headers = {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'Authorization': 'Bearer $token',
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
  static const String somethingWentWrong = "something_went_wrong";
  static const String error400 = "error400";
  static const String error401 = "error401";
  static const String error403 = "error403";
  static const String error404 = "error404";
  static const String error412 = "error412";
  static const String error500 = "error500";
  static const String error503 = "error503";
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
  debugPrint(bloc.state.toString());
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
        backgroundColor: Theme.of(context).colorScheme.secondary,
        textColor: Colors.white,
        fontSize: 16.0.sp,
      );
    }

    /// set message to '' (empty), for avoid print it again when state is changed
    /// or change the value of 'statusChanged' to false
    bloc.clearMessage();
  }
}

String get testText =>
    'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et';

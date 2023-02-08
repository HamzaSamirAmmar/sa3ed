import 'package:flutter/material.dart';

import '../../features/about_us/presentation/pages/about_us_page.dart';
import '../../features/details/presentation/pages/details_page.dart';
import '../../features/form/presentation/pages/form_page.dart';
import '../../features/home/presentation/pages/home_page.dart';
import '../../features/splash/presentation/pages/splash_page.dart';

class GeneratePage {
  static Route<dynamic> onGenerate(RouteSettings value) {
    String name = value.name ?? '';

    debugPrint("The name is: $name");
    switch (name) {
      /*** splashPage **/
      case PageName.splashPage:
        {
          return MaterialPageRoute(
            builder: (context) => const SplashPage(),
          );
        }

      /*** homePage **/
      case PageName.homePage:
        {
          return MaterialPageRoute(
            builder: (context) => const HomePage(),
          );
        }

      /*** aboutUsPage **/
      case PageName.aboutUsPage:
        {
          return MaterialPageRoute(
            builder: (context) => const AboutUsPage(),
          );
        }

      /*** splashPage **/
      case PageName.formPage:
        {
          return MaterialPageRoute(
            builder: (context) => FormPage(
              isHelpRequest: value.arguments as bool,
            ),
          );
        }

      /*** detailsPage **/
      case PageName.detailsPage:
        {
          return MaterialPageRoute(
            builder: (context) => const DetailsPage(),
          );
        }

      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Error'),
          ),
          body: const Center(
            child: Text('ERROR'),
          ),
        );
      },
    );
  }
}

class PageName {
  static const String splashPage = "/";
  static const String homePage = "/home";
  static const String aboutUsPage = "/about-us";
  static const String formPage = "/form";
  static const String detailsPage = "/details";
}
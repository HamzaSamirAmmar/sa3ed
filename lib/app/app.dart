import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../core/util/generate_screen.dart';
import '../core/util/over_scroll.dart';
import '../features/splash/presentation/pages/splash_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(430, 812),
      minTextAdapt: WidgetsBinding.instance.window.physicalSize.width > 500
          ? true
          : false,
      builder: (context, child) {
        return MaterialApp(
          initialRoute: '/',
          onUnknownRoute: (_) => MaterialPageRoute(
            builder: (context) => const SplashPage(),
          ),
          debugShowCheckedModeBanner: false,
          builder: (context, child) {
            return ScrollConfiguration(
              behavior: MyBehavior(),
              child: child!,
            );
          },
          home: const SplashPage(),
          locale: const Locale('ar', ''),
          onGenerateRoute: GeneratePage.onGenerate,
          supportedLocales: const [
            Locale('ar', ''),
          ],
          localizationsDelegates: const [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
          ],
          theme: ThemeData(
            iconTheme: const IconThemeData(color: Color(0xFF97D5C8)),
            appBarTheme: const AppBarTheme(
              iconTheme: IconThemeData(color: Color(0xFF97D5C8)),
              backgroundColor: Color(0xFF5A6F80),
            ),
            textTheme: const TextTheme(
              bodyText1: TextStyle(
                color: Color(0xFF1D1D1D),
              ),
            ),
            colorScheme: ColorScheme.fromSwatch().copyWith(
              brightness: Brightness.light,
              shadow: const Color(0xFF000000),
              primary: const Color(0xFF97D5C8),
              background: const Color(0xFFE5E4E4),
              secondary: const Color(0xFF5A6F80),
              tertiary: const Color(0xFFE2C044),
            ),
            fontFamily: "Tajawal",
          ),
        );
      },
    );
  }
}

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:page_transition/page_transition.dart';
import 'package:sa3ed/core/util/constants.dart';
import 'package:sa3ed/features/home/presentation/pages/home_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: AnimatedSplashScreen(
        duration: 3000,
        splashIconSize: 430.w,
        backgroundColor: Theme.of(context).colorScheme.background,
        centered: true,
        nextScreen: const HomePage(),
        // pageTransitionType: PageTransitionType.leftToRight,
        splash: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Image.asset(
                IconsAssets.logo,
                width: 330.w,
              ),
            ),
            SizedBox(height: 50.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "كُن سَاعِداً للخيرِ، وَ",
                  style: TextStyle(
                    fontSize: 35.sp,
                  ),
                ),
                Text(
                  "سَاعِدْ",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.secondary,
                    fontSize: 40.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

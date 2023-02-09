import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/util/constants.dart';
import '../../../../injection.dart';
import '../../../home/presentation/bloc/home_bloc.dart';
import '../../../home/presentation/pages/home_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  final _homeBloc = sl<HomeBloc>();

  @override
  void initState() {
    _homeBloc.addGetAllGovernoratesEvent();
    _homeBloc.addGetAllHelpTypesEvent();
    super.initState();
  }

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

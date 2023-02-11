import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sa3ed/features/auth/presentation/pages/register_page.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../core/util/constants.dart';
import '../../../../injection.dart';
import '../../../auth/presentation/pages/login_page.dart';
import '../../../home/presentation/bloc/home_bloc.dart';
import '../../../home/presentation/pages/home_page.dart';
import '../bloc/splash_bloc.dart';
import '../bloc/splash_state.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  final _homeBloc = sl<HomeBloc>();

  final _bloc = sl<SplashBloc>();

  @override
  void initState() {
    _bloc.addCheckVersionEvent();
    _bloc.addCheckAuthEvent();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<SplashBloc, SplashState>(
      bloc: _bloc,
      listener: (context, state) {
        if (state.apkUrl != null) {
          _bloc.reInitState(
            onStateReInitialized: () {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: const Text("نسخة جديدة"),
                  content:
                      const Text("يوجد نسخة جديدة من التطبيق، هل تود تحميلها؟"),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: const Text("لا"),
                    ),
                    TextButton(
                      onPressed: () async {
                        Uri uri = Uri.parse(state.apkUrl!);
                        if (await canLaunchUrl(uri)) {
                          await launchUrl(uri);
                        }
                      },
                      child: const Text("نعم"),
                    ),
                  ],
                ),
              );
            },
          );
        }
      },
      child: BlocBuilder<SplashBloc, SplashState>(
        bloc: _bloc,
        builder: (context, state) {
          return Scaffold(
            backgroundColor: Theme.of(context).colorScheme.background,
            body: AnimatedSplashScreen(
              duration: 3000,
              splashIconSize: 430.w,
              backgroundColor: Theme.of(context).colorScheme.background,
              centered: true,
              nextScreen: state.isAuth ? const HomePage() : const LoginPage(),
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
        },
      ),
    );
  }
}

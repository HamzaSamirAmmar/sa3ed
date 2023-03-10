import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/util/constants.dart';
import '../../../../core/util/generate_screen.dart';
import '../../../../core/widgets/custom_text_field.dart';
import '../../../../core/widgets/loader.dart';
import '../../../../injection.dart';
import '../bloc/auth_bloc.dart';
import '../bloc/auth_state.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _bloc = sl<AuthBloc>();

  final _formKey = GlobalKey<FormState>();

  final _usernameController = TextEditingController();

  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      bloc: _bloc,
      listener: (context, state) {
        if (state.allSuccess) {
          _bloc.reInitState(
            onStateReInitialized: () {
              Navigator.of(context).pushNamedAndRemoveUntil(
                PageName.homePage,
                (route) => false,
              );
            },
          );
        }
      },
      builder: (context, state) {
        message(
          context: context,
          message: state.message,
          isError: state.error,
          bloc: _bloc,
        );
        return GestureDetector(
          onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
          child: Scaffold(
            backgroundColor: Theme.of(context).colorScheme.background,
            body: Stack(
              children: [
                SingleChildScrollView(
                  child: Form(
                    key: _formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: 100.h),
                        Image.asset(
                          IconsAssets.logo,
                          height: 200.h,
                          width: 430.w,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: 20.h,
                          ),
                          child: Text(
                            "?????????? ????????",
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.secondary,
                              fontWeight: FontWeight.bold,
                              fontSize: 30.sp,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 20.w,
                          ),
                          child: CustomTextField(
                            hint: "????????: ??????123?????????? ahmad2mohammed",
                            formKey: _formKey,
                            label: "??????????",
                            controller: _usernameController,
                            validator: (_) {
                              if (_usernameController.text.isEmpty) {
                                return "?????? ???????????????? ??????????";
                              } else if (_usernameController.text.length < 4) {
                                return "?????? ???????????????? ?????? ???? ?????????? ???? ?????????? ?????????? ?????? ??????????";
                              }
                              return null;
                            },
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 20.w,
                          ),
                          child: CustomTextField(
                            obscureText: true,
                            hint: "???????? ???????? ???????????? ????",
                            formKey: _formKey,
                            label: "???????? ????????",
                            controller: _passwordController,
                            validator: (_) {
                              if (_passwordController.text.isEmpty) {
                                return "???????? ???????? ????????????";
                              } else if (_passwordController.text.length < 4) {
                                return "???????? ???????? ?????? ???? ?????????? ???? ?????????? ?????????? ?????? ??????????";
                              }
                              return null;
                            },
                          ),
                        ),
                        SizedBox(height: 20.h),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 20.w,
                          ),
                          child: Text(
                            "* ?????? ???????????????? ?????? ???? ???????? ?????????????? ???? ???????????? ???? ???????? ???????? ???? ?????????? ????????????.",
                            style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 14.sp,
                            ),
                          ),
                        ),
                        SizedBox(height: 5.h),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 20.w,
                          ),
                          child: Text(
                            "* ?????????? ???????????? ???????????? ???????????? ???????????????? ?????? ???????????? ?????? ?????? ???????? ?????????? ?????? ???????? ????????.",
                            style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 14.sp,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 20.w,
                            vertical: 20.h,
                          ),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25),
                              ),
                              backgroundColor:
                                  Theme.of(context).colorScheme.secondary,
                            ),
                            onPressed: () {
                              bool isValid =
                                  _formKey.currentState?.validate() ?? false;
                              if (!state.isLoading && isValid) {
                                _bloc.addSendAuthDataEvent(
                                  name: _usernameController.text,
                                  password: _passwordController.text,
                                  isLogin: false,
                                );
                              }
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                    vertical: 14.h,
                                  ),
                                  child: const Text("?????????? ????????"),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 10.h),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 20.w,
                          ),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.of(context)
                                  .pushReplacementNamed(PageName.loginPage);
                            },
                            child: Padding(
                              padding:  EdgeInsets.only(
                                bottom: 10.h,
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  color: Theme.of(context)
                                      .colorScheme
                                      .tertiary
                                      .withOpacity(0.1),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                    vertical: 10.h,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        "???????? ???????? ??????????????  ",
                                        style: TextStyle(
                                          color: Theme.of(context).textTheme.bodyText1!.color!.withOpacity(0.6),
                                        ),
                                      ),
                                      Text(
                                        "?????? ????????????",
                                        style: TextStyle(
                                          color: Theme.of(context).textTheme.bodyText1!.color!.withOpacity(0.6),
                                          decoration: TextDecoration.underline,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                if (state.isLoading) const Loader(),
              ],
            ),
          ),
        );
      },
    );
  }
}

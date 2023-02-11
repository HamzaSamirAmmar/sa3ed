import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sa3ed/core/util/constants.dart';
import 'package:sa3ed/core/util/generate_screen.dart';
import 'package:sa3ed/core/widgets/custom_text_field.dart';

import '../../../../core/widgets/loader.dart';
import '../../../../injection.dart';
import '../bloc/auth_bloc.dart';
import '../bloc/auth_state.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
                            "تسجيل الدخول",
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
                            hint: "ما هو اسم المستخدم الخاص بك؟",
                            formKey: _formKey,
                            label: "الاسم",
                            controller: _usernameController,
                            validator: (_) {
                              if (_usernameController.text.isEmpty) {
                                return "اسم المستخدم مطلوب";
                              } else if (_usernameController.text.length < 4) {
                                return "اسم المستخدم يجب أن تتكون من أربعة محارف على الأقل";
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
                            hint: "ما هي كلمة السر الخاصة بك؟",
                            formKey: _formKey,
                            label: "كلمة السر",
                            controller: _passwordController,
                            validator: (_) {
                              if (_passwordController.text.isEmpty) {
                                return "كلمة السر مطلوبة";
                              } else if (_passwordController.text.length < 4) {
                                return "كلمة السر يجب أن تتكون من أربعة محارف على الأقل";
                              }
                              return null;
                            },
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
                                  isLogin: true,
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
                                  child: const Text("تسجيل الدخول"),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 10.h),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context)
                                .pushReplacementNamed(PageName.registerPage);
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "ليس لديك حساب؟  ",
                                style: TextStyle(
                                  color: Theme.of(context).colorScheme.tertiary,
                                ),
                              ),
                              Text(
                                "أنشىء حساباً",
                                style: TextStyle(
                                  color: Theme.of(context).colorScheme.tertiary,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                if(state.isLoading) const Loader(),
              ],
            ),
          ),
        );
      },
    );
  }
}
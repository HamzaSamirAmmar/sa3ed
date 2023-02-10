import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_html/flutter_html.dart';

import '../../../../core/util/constants.dart';
import '../../../../core/widgets/empty_page.dart';
import '../../../../core/widgets/loader.dart';
import '../../../../injection.dart';
import '../bloc/about_us_bloc.dart';
import '../bloc/about_us_state.dart';

class AboutUsPage extends StatefulWidget {
  const AboutUsPage({Key? key}) : super(key: key);

  @override
  State<AboutUsPage> createState() => _AboutUsPageState();
}

class _AboutUsPageState extends State<AboutUsPage> {
  final _bloc = sl<AboutUsBloc>();

  @override
  void initState() {
    _bloc.addGetAboutUsEvent();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AboutUsBloc, AboutUsState>(
      bloc: _bloc,
      builder: (context, state) {
        message(
          context: context,
          message: state.message,
          isError: state.error,
          bloc: _bloc,
        );
        return Scaffold(
          backgroundColor: Theme.of(context).colorScheme.background,
          appBar: AppBar(
            centerTitle: true,
            title: const Text("من نحن"),
          ),
          body: Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    if (state.aboutUs != null)
                      Html(
                        data: state.aboutUs!.html,
                      ),
                  ],
                ),
              ),
              if (state.isLoading) const Loader(),
              if (!state.isLoading && state.aboutUs == null)
                const EmptyPage(
                  iconPath: IconsAssets.houseInsurance,
                  description:
                      "فشل تحميل المعلومات المطلوبة، الرجاء التحقق من إتصالك بالانترنت وإعادة المحاولة",
                )
            ],
          ),
        );
      },
    );
  }
}

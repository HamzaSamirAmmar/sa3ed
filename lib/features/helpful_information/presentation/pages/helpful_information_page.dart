import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:sa3ed/core/util/constants.dart';
import 'package:sa3ed/core/widgets/loader.dart';
import 'package:sa3ed/features/helpful_information/presentation/bloc/helpful_information_bloc.dart';

import '../../../../injection.dart';
import '../bloc/helpful_information_state.dart';

class HelpfulInformationPage extends StatefulWidget {
  const HelpfulInformationPage({Key? key}) : super(key: key);

  @override
  State<HelpfulInformationPage> createState() => _HelpfulInformationPageState();
}

class _HelpfulInformationPageState extends State<HelpfulInformationPage> {
  final _bloc = sl<HelpfulInformationBloc>();

  @override
  void initState() {
    _bloc.addGetHelpfulInformationEvent();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HelpfulInformationBloc, HelpfulInformationState>(
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
          body: Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    if (state.info != null)
                      Html(
                        data: state.info!.html,
                      ),
                  ],
                ),
              ),
              if (state.isLoading) const Loader(),
            ],
          ),
        );
      },
    );
  }
}

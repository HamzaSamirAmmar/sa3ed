import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/util/generate_screen.dart';
import '../../../../core/widgets/loader.dart';
import '../../../../injection.dart';
import '../../../home/presentation/bloc/home_bloc.dart';
import '../../../home/presentation/bloc/home_state.dart';
import '../bloc/details_bloc.dart';
import '../bloc/details_state.dart';

class DetailsPage extends StatefulWidget {
  final DetailsPageArguments arguments;

  const DetailsPage({
    Key? key,
    required this.arguments,
  }) : super(key: key);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  final _bloc = sl<DetailsBloc>();

  final _homeBloc = sl<HomeBloc>();

  @override
  void initState() {
    _bloc.addGetHelpEvent(
      id: widget.arguments.id,
      isOffer: widget.arguments.isOffer,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      bloc: _homeBloc,
      builder: (context, homeState) {
        return BlocBuilder<DetailsBloc, DetailsState>(
          bloc: _bloc,
          builder: (context, state) {
            return Scaffold(
              backgroundColor: Theme.of(context).colorScheme.background,
              appBar: AppBar(
                centerTitle: true,
                title: Text((widget.arguments.isOffer
                        ? "عرض مساعدة: "
                        : "طلب مساعدة: ") +
                    homeState.helpTypes
                        .firstWhere((b) => b.id == widget.arguments.helpType)
                        .name),
              ),
              body: Stack(
                children: [
                  if (state.help != null)
                    SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(state.help!.name),
                          Text(state.help!.createdAt),
                          Text(state.help!.locationDetails),
                          Text(state.help!.notes),
                        ],
                      ),
                    ),
                  if (state.isLoading) const Loader(),
                ],
              ),
            );
          },
        );
      },
    );
  }
}

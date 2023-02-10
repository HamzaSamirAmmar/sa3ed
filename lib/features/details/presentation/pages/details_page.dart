import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sa3ed/core/util/constants.dart';

import '../../../../core/util/generate_screen.dart';
import '../../../../core/widgets/KeyValueRow.dart';
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
                title: Text((widget.arguments.isOffer
                        ? "عرض مساعدة: "
                        : "طلب مساعدة: ") +
                    homeState.helpTypes
                        .firstWhere((b) => b.id == widget.arguments.helpType)
                        .name),
              ),
              body: Stack(
                children: [
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        if (state.help != null)
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 20.w,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 20.h),
                                KeyTitleValueRow(
                                  keyTitle: state.help!.isOffer
                                      ? "- نوع العرض"
                                      : "- نوع الطلب",
                                  value: homeState.helpTypes
                                      .firstWhere(
                                          (b) => b.id == state.help!.helpType)
                                      .name,
                                ),
                                KeyTitleValueRow(
                                  keyTitle: "- المحافظة",
                                  value: homeState.governorates
                                      .firstWhere(
                                          (b) => b.id == state.help!.cityId)
                                      .name,
                                ),
                                if(state.help!.areaId != null)
                                KeyTitleValueRow(
                                  keyTitle: "- المنطقة",
                                  value: homeState.governorates
                                      .firstWhere(
                                          (b) => b.id == state.help!.cityId)
                                      .cities
                                      .firstWhere(
                                          (b) => b.id == state.help!.areaId)
                                      .name,
                                ),
                                if(state.help!.areaId == null)
                                  const KeyTitleValueRow(
                                    keyTitle: "- المنطقة",
                                    value: "غير محددة",
                                  ),
                                KeyTitleValueRow(
                                  keyTitle: "- العنوان",
                                  value: state.help!.locationDetails,
                                ),
                                KeyTitleValueRow(
                                  keyTitle: "- الاسم",
                                  value: state.help!.name,
                                ),
                                KeyTitleValueRow(
                                  keyTitle: "- رقم التواصل",
                                  value: state.help!.phone,
                                ),
                                KeyTitleValueRow(
                                  keyTitle: "- الملاحظات",
                                  value: state.help!.notes.isEmpty
                                      ? "لا يوجد"
                                      : state.help!.notes,
                                ),
                                KeyTitleValueRow(
                                  keyTitle: "- التاريخ",
                                  value:
                                      "${state.help!.createdAt.substring(0, 10)} - ${state.help!.createdAt.substring(11, 16)}",
                                ),
                              ],
                            ),
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
      },
    );
  }
}

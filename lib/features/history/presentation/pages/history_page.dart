import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:sa3ed/core/util/constants.dart';
import 'package:sa3ed/core/widgets/KeyValueRow.dart';
import 'package:sa3ed/core/widgets/custom_container.dart';
import 'package:sa3ed/core/widgets/empty_page.dart';
import 'package:sa3ed/core/widgets/loader.dart';
import 'package:sa3ed/features/history/presentation/bloc/history_bloc.dart';
import 'package:sa3ed/features/home/presentation/bloc/home_bloc.dart';

import '../../../../injection.dart';
import '../../../home/presentation/bloc/home_state.dart';
import '../bloc/history_state.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  final _bloc = sl<HistoryBloc>();

  final _homeBloc = sl<HomeBloc>();

  @override
  void initState() {
    _bloc.addGetHelpHistoryEvent();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      bloc: _homeBloc,
      builder: (context, homeState) {
        return BlocBuilder<HistoryBloc, HistoryState>(
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
                        if (state.helps.isNotEmpty)
                          ...state.helps.map(
                            (help) => CustomContainer(
                              widget: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  KeyTitleValueRow(
                                    keyTitle: "النوع",
                                    value: help.isOffer
                                        ? "عرض مساعدة"
                                        : "طلب مساعدة",
                                  ),
                                  KeyTitleValueRow(
                                    keyTitle: help.isOffer
                                        ? "نوع العرض"
                                        : "نوع الطلب",
                                    value: homeState.helpTypes
                                        .firstWhere(
                                            (b) => b.id == help.helpType)
                                        .name,
                                  ),
                                  KeyTitleValueRow(
                                    keyTitle: "المحافظة",
                                    value: homeState.governorates
                                        .firstWhere(
                                            (b) => b.id == help.cityId)
                                        .name,
                                  ),
                                  KeyTitleValueRow(
                                    keyTitle: "المنقطة",
                                    value: homeState.governorates
                                        .firstWhere(
                                            (b) => b.id == help.cityId)
                                        .cities
                                        .firstWhere(
                                            (b) => b.id == help.areaId)
                                        .name,
                                  ),
                                  KeyTitleValueRow(
                                    keyTitle: "العنوان",
                                    value: help.locationDetails,
                                  ),
                                  KeyTitleValueRow(
                                    keyTitle: "الاسم",
                                    value: help.name,
                                  ),
                                  KeyTitleValueRow(
                                    keyTitle: "رقم التواصل",
                                    value: help.phone,
                                  ),
                                  KeyTitleValueRow(
                                    keyTitle: "الملاحظات",
                                    value: help.notes.isEmpty
                                        ? "لا يوجد"
                                        : help.notes,
                                  ),
                                  KeyTitleValueRow(
                                    keyTitle: "التاريخ",
                                    value:
                                        "${help.createdAt.substring(0, 10)} - ${help.createdAt.substring(11, 16)}",
                                  ),
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor:
                                          Colors.redAccent.withOpacity(0.9),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(25),
                                      ),
                                    ),
                                    onPressed: () {
                                      showDialog(
                                        context: context,
                                        builder: (context) => AlertDialog(
                                          title: const Text("تأكيد الحذف"),
                                          content: const Text(
                                            "هل أنت متأكد من أنك تريد حذف هذا العنصر؟",
                                          ),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(25),
                                          ),
                                          actions: [
                                            TextButton(
                                              onPressed: () {
                                                Navigator.of(context).pop();
                                              },
                                              child: const Text("لا"),
                                            ),
                                            TextButton(
                                              onPressed: () {
                                                _bloc.addDeleteHelpEvent(
                                                  id: help.id,
                                                  isOffer: help.isOffer,
                                                );
                                                Navigator.of(context).pop();
                                              },
                                              child: const Text("نعم"),
                                            ),
                                          ],
                                        ),
                                      );
                                    },
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                            top: 5.h,
                                            left: 5.w,
                                          ),
                                          child: const Text('حذف'),
                                        ),
                                        const Center(
                                          child: Icon(Icons.delete_outline),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                      ],
                    ),
                  ),
                  if (state.isLoading) const Loader(),
                  if (!state.isLoading && state.helps.isEmpty)
                    const EmptyPage(
                      iconPath: IconsAssets.handsSupport,
                      description:
                          "لا يوجد لديك عروض أو طلبات للمساعدة حالياً، في حال كان لديك أية عروض أو طلبات ستظهر لك هنا لكي تتكمن من حذفها في حال تمت تلبيتها",
                    ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}

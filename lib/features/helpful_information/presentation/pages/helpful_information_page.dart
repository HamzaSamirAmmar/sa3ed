import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/util/constants.dart';
import '../../../../core/util/enums.dart';
import '../../../../core/widgets/KeyValueRow.dart';
import '../../../../core/widgets/custom_container.dart';
import '../../../../core/widgets/custom_drop_down_button.dart';
import '../../../../core/widgets/empty_page.dart';
import '../../../../core/widgets/loader.dart';
import '../../../../core/widgets/scroll_back_button.dart';
import '../../../../injection.dart';

import '../../../home/domain/entities/governorate.dart';
import '../../../home/presentation/bloc/home_bloc.dart';
import '../../../home/presentation/bloc/home_state.dart';
import '../../domain/entities/helpful_information.dart';
import '../../domain/entities/info_type.dart';
import '../bloc/helpful_information_bloc.dart';
import '../bloc/helpful_information_state.dart';

class HelpfulInformationPage extends StatefulWidget {
  const HelpfulInformationPage({Key? key}) : super(key: key);

  @override
  State<HelpfulInformationPage> createState() => _HelpfulInformationPageState();
}

class _HelpfulInformationPageState extends State<HelpfulInformationPage> {
  final _bloc = sl<HelpfulInformationBloc>();

  final _homeBloc = sl<HomeBloc>();

  InfoType? _infoType;

  Governorate? _governorate;

  List<HelpfulInformation> _filteredInfo = [];

  late final ScrollController _scrollController;

  bool _isScrollBackButtonVisible = false;

  void _filterData({
    required List<HelpfulInformation> info,
    int? governorateId,
    int? infoType,
  }) {
    if (governorateId != null && infoType != null) {
      for (int i = 0; i < info.length; i++) {
        if (info[i].governorateId == governorateId &&
            info[i].infoType == infoType) {
          _filteredInfo.add(info[i]);
        }
      }
    } else if (governorateId != null) {
      for (int i = 0; i < info.length; i++) {
        if (info[i].governorateId == governorateId) {
          _filteredInfo.add(info[i]);
        }
      }
    } else {
      for (int i = 0; i < info.length; i++) {
        if (info[i].infoType == infoType) {
          _filteredInfo.add(info[i]);
        }
      }
    }
  }

  @override
  void initState() {
    _bloc.addGetHelpfulInformationEvent();
    _scrollController = ScrollController()
      ..addListener(() {
        if (_scrollController.hasClients) {
          if (_scrollController.offset == 0) {
            if (_isScrollBackButtonVisible) {
              setState(() {
                _isScrollBackButtonVisible = false;
              });
            }
          } else if (_scrollController.position.userScrollDirection ==
              ScrollDirection.forward) {
            if (!_isScrollBackButtonVisible) {
              setState(() {
                _isScrollBackButtonVisible = true;
              });
            }
          } else {
            if (_isScrollBackButtonVisible) {
              setState(() {
                _isScrollBackButtonVisible = false;
              });
            }
          }
        }
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      bloc: _homeBloc,
      builder: (context, homeState) {
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
                    controller: _scrollController,
                    child: Column(
                      children: [
                        SizedBox(height: 20.h),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 20.w,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "تصفية النتائج حسب:",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Theme.of(context).colorScheme.tertiary,
                                ),
                              ),
                              if (_governorate != null || _infoType != null)
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      _filteredInfo = [];
                                      _governorate = null;
                                      _infoType = null;
                                    });
                                  },
                                  behavior: HitTestBehavior.opaque,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.close,
                                        color: Colors.red,
                                        size: 15.sp,
                                      ),
                                      Text(
                                        "حذف المرشحات",
                                        style: TextStyle(
                                          color: Colors.red,
                                          fontSize: 14.sp,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 20.w,
                          ),
                          child: CustomDropDownButton<InfoType>(
                            selectedItem: _infoType,
                            defaultValue: "نوع المعلومة",
                            items: infoTypes(),
                            onItemSelected: (InfoType info) {
                              if (info != _infoType) {
                                setState(
                                  () {
                                    _filteredInfo = [];
                                    _infoType = info;
                                    _filterData(
                                      info: state.info.toList(),
                                      governorateId: _governorate != null
                                          ? _governorate!.id
                                          : null,
                                      infoType: _infoType!.id,
                                    );
                                  },
                                );
                              }
                            },
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 20.w,
                          ),
                          child: CustomDropDownButton<Governorate>(
                            selectedItem: _governorate,
                            defaultValue: "المحافظة",
                            items: homeState.governorates.toList(),
                            onItemSelected: (Governorate type) {
                              if (type != _governorate) {
                                setState(
                                  () {
                                    _filteredInfo = [];
                                    _governorate = type;
                                    _filterData(
                                      info: state.info.toList(),
                                      governorateId: _governorate!.id,
                                      infoType: _infoType != null
                                          ? _infoType!.id
                                          : null,
                                    );
                                  },
                                );
                              }
                            },
                          ),
                        ),
                        if (homeState.governorates.isNotEmpty &&
                            _governorate == null &&
                            _infoType == null)
                          ...state.info.map(
                            (item) => CustomContainer(
                              widget: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  KeyTitleValueRow(
                                    keyTitle: 'الاسم',
                                    value: item.name,
                                  ),
                                  KeyTitleValueRow(
                                    keyTitle: 'المحافظة',
                                    value: homeState.governorates
                                        .firstWhere((governorate) =>
                                            governorate.id ==
                                            item.governorateId)
                                        .name,
                                  ),
                                  if (item.locationDetails.isNotEmpty)
                                    KeyTitleValueRow(
                                      keyTitle: 'العنوان',
                                      value: item.locationDetails,
                                    ),
                                  KeyTitleValueRow(
                                    keyTitle: 'النوع',
                                    value: mapInfoTypeToString(item.infoType),
                                  ),
                                  KeyTitleValueRow(
                                    keyTitle: 'التفاصيل',
                                    value: item.description,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        if (homeState.governorates.isNotEmpty &&
                            (_governorate != null || _infoType != null))
                          ..._filteredInfo.map(
                            (item) => CustomContainer(
                              widget: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  KeyTitleValueRow(
                                    keyTitle: 'الاسم',
                                    value: item.name,
                                  ),
                                  KeyTitleValueRow(
                                    keyTitle: 'المحافظة',
                                    value: homeState.governorates
                                        .firstWhere((governorate) =>
                                            governorate.id ==
                                            item.governorateId)
                                        .name,
                                  ),
                                  if (item.locationDetails.isNotEmpty)
                                    KeyTitleValueRow(
                                      keyTitle: 'العنوان',
                                      value: item.locationDetails,
                                    ),
                                  KeyTitleValueRow(
                                    keyTitle: 'النوع',
                                    value: mapInfoTypeToString(item.infoType),
                                  ),
                                  KeyTitleValueRow(
                                    keyTitle: 'التفاصيل',
                                    value: item.description,
                                  ),
                                ],
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                  ScrollBackButton(
                    isVisible: _isScrollBackButtonVisible,
                    controller: _scrollController,
                  ),
                  if (state.isLoading) const Loader(),
                  if (!state.isLoading && state.info.isEmpty)
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
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sa3ed/features/help_requests/presentation/bloc/help_requests_bloc.dart';
import 'package:sa3ed/features/help_requests/presentation/bloc/help_requests_state.dart';

import '../../../../core/util/constants.dart';
import '../../../../core/util/generate_screen.dart';
import '../../../../core/widgets/KeyValueRow.dart';
import '../../../../core/widgets/custom_container.dart';
import '../../../../core/widgets/custom_drop_down_button.dart';
import '../../../../core/widgets/empty_page.dart';
import '../../../../core/widgets/loader.dart';
import '../../../../core/widgets/scroll_back_button.dart';
import '../../../../injection.dart';
import '../../../home/domain/entities/city.dart';
import '../../../home/domain/entities/governorate.dart';
import '../../../home/domain/entities/help_type.dart';
import '../../../home/presentation/bloc/home_bloc.dart';
import '../../../home/presentation/bloc/home_state.dart';

class HelpRequestsPage extends StatefulWidget {
  const HelpRequestsPage({Key? key}) : super(key: key);

  @override
  State<HelpRequestsPage> createState() => _HelpRequestsPageState();
}

class _HelpRequestsPageState extends State<HelpRequestsPage> {
  final _bloc = sl<HelpRequestsBloc>();

  final _homeBloc = sl<HomeBloc>();

  late final ScrollController _scrollController;

  bool _isScrollBackButtonVisible = false;

  HelpType? _helpType;

  Governorate? _governorate;

  City? _city;

  void _fetchFilteredData() {
    _bloc.addGetHelpRequestsEvent(
      cityId: _city == null ? null : _city!.id,
      governorateId: _governorate == null ? null : _governorate!.id,
      helpTypeId: _helpType == null ? null : _helpType!.id,
    );
  }

  @override
  void initState() {
    _scrollController = ScrollController()
      ..addListener(() {
        if (_bloc.state.helpRequests
            .paginationScrollControllerShouldGetMoreData(
          scrollController: _scrollController,
        )) {
          _fetchFilteredData();
        }
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
    _fetchFilteredData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      bloc: _homeBloc,
      builder: (context, homeState) {
        return BlocBuilder<HelpRequestsBloc, HelpRequestsState>(
          bloc: _bloc,
          builder: (context, state) {
            message(
              context: context,
              message: state.message,
              isError: state.error,
              bloc: _bloc,
            );
            _bloc.state.helpRequests.checkPaginationInitialExtent(
              addEvent: () {
                _fetchFilteredData();
              },
              scrollController: _scrollController,
            );
            return Scaffold(
              backgroundColor: Theme.of(context).colorScheme.background,
              body: Stack(
                children: [
                  SingleChildScrollView(
                    controller: _scrollController,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 20.h),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 20.w,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "تصفية النتائج حسب:",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .tertiary,
                                    ),
                                  ),
                                  if (_governorate != null || _helpType != null)
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          _city = null;
                                          _governorate = null;
                                          _helpType = null;
                                          _bloc.reInitState(
                                              onStateReInitialized: () {
                                            _fetchFilteredData();
                                          });
                                        });
                                      },
                                      behavior: HitTestBehavior.opaque,
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
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
                              CustomDropDownButton<HelpType>(
                                selectedItem: _helpType,
                                defaultValue: "نوع المساعدة",
                                items: homeState.helpTypes.toList(),
                                onItemSelected: (HelpType type) {
                                  if (type != _helpType) {
                                    setState(
                                      () {
                                        _helpType = type;
                                        _bloc.reInitState(
                                          onStateReInitialized: () {
                                            _fetchFilteredData();
                                          },
                                        );
                                      },
                                    );
                                  }
                                },
                              ),
                              CustomDropDownButton<Governorate>(
                                selectedItem: _governorate,
                                defaultValue: "المحافظة",
                                items: homeState.governorates.toList(),
                                onItemSelected: (Governorate type) {
                                  if (type != _governorate) {
                                    setState(() {
                                      _governorate = type;
                                      _city = null;
                                      _bloc.reInitState(
                                        onStateReInitialized: () {
                                          _fetchFilteredData();
                                        },
                                      );
                                    });
                                  }
                                },
                              ),
                              if (_governorate != null)
                                CustomDropDownButton<City>(
                                  selectedItem: _city,
                                  defaultValue: "المنطقة",
                                  items: homeState.governorates
                                      .firstWhere((governorate) =>
                                          governorate.id == _governorate!.id)
                                      .cities,
                                  onItemSelected: (City type) {
                                    if (type != _city) {
                                      setState(() {
                                        _city = type;
                                        _bloc.reInitState(
                                          onStateReInitialized: () {
                                            _fetchFilteredData();
                                          },
                                        );
                                      });
                                    }
                                  },
                                ),
                            ],
                          ),
                        ),
                        if (homeState.helpTypes.isNotEmpty &&
                            homeState.governorates.isNotEmpty)
                          ...state.helpRequests.items
                              .map(
                                (helpRequest) => GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).pushNamed(
                                      PageName.detailsPage,
                                      arguments: DetailsPageArguments(
                                        id: helpRequest.id,
                                        isOffer: false,
                                        helpType: helpRequest.helpType,
                                      ),
                                    );
                                  },
                                  child: CustomContainer(
                                    widget: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        KeyTitleValueRow(
                                          keyTitle: "نوع الطلب",
                                          value: homeState.helpTypes
                                              .firstWhere(
                                                (b) =>
                                                    b.id ==
                                                    helpRequest.helpType,
                                              )
                                              .name,
                                        ),
                                        KeyTitleValueRow(
                                          keyTitle: "المحافظة",
                                          value: homeState.governorates
                                              .firstWhere((b) =>
                                                  b.id == helpRequest.cityId)
                                              .name,
                                        ),
                                        if (helpRequest.areaId != null)
                                          KeyTitleValueRow(
                                            keyTitle: "المنطقة",
                                            value: homeState.governorates
                                                .firstWhere((b) =>
                                                    b.id == helpRequest.cityId)
                                                .cities
                                                .firstWhere((b) =>
                                                    b.id == helpRequest.areaId)
                                                .name,
                                          ),
                                        if (helpRequest.areaId == null)
                                          const KeyTitleValueRow(
                                            keyTitle: "المنطقة",
                                            value: 'غير محددة',
                                          ),
                                        KeyTitleValueRow(
                                          keyTitle: "التاريخ",
                                          value:
                                              "${helpRequest.createdAt.substring(0, 10)} - ${helpRequest.createdAt.substring(11, 16)}",
                                        ),
                                        Text(
                                          "*اضغط من أجل رؤية المزيد*",
                                          style: TextStyle(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .tertiary,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              )
                              .toList(),
                        if (!state.helpRequests.isFinished &&
                            state.helpRequests.items.isNotEmpty)
                          const Loader(),
                        SizedBox(height: 20.h),
                      ],
                    ),
                  ),
                  ScrollBackButton(
                    isVisible: _isScrollBackButtonVisible,
                    controller: _scrollController,
                  ),
                  if (state.isLoading) const Loader(),
                  if (state.helpRequests.items.isEmpty && !state.isLoading)
                    Padding(
                      padding: EdgeInsets.only(
                        top: 100.h,
                      ),
                      child: const EmptyPage(
                        iconPath: IconsAssets.handsSupportWithLove,
                        description:
                            "لا توجد طلبات للمساعدة حالياً، في حال وجود طلبات للمساعدة ستظهر لك هنا",
                      ),
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

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
import '../bloc/help_offers_bloc.dart';
import '../bloc/help_offers_state.dart';

class HelpOffersPage extends StatefulWidget {
  const HelpOffersPage({Key? key}) : super(key: key);

  @override
  State<HelpOffersPage> createState() => _HelpOffersPageState();
}

class _HelpOffersPageState extends State<HelpOffersPage> {
  final _bloc = sl<HelpOffersBloc>();

  final _homeBloc = sl<HomeBloc>();

  late final ScrollController _scrollController;

  bool _isScrollBackButtonVisible = false;

  HelpType? _helpType;

  Governorate? _governorate;

  City? _city;

  void _fetchFilteredData() {
    _bloc.addGetHelpOffersEvent(
      cityId: _city == null ? null : _city!.id,
      governorateId: _governorate == null ? null : _governorate!.id,
      helpTypeId: _helpType == null ? null : _helpType!.id,
    );
  }

  @override
  void initState() {
    _scrollController = ScrollController()
      ..addListener(() {
        if (_bloc.state.helpOffers.paginationScrollControllerShouldGetMoreData(
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
        return BlocBuilder<HelpOffersBloc, HelpOffersState>(
          bloc: _bloc,
          builder: (context, state) {
            message(
              context: context,
              message: state.message,
              isError: state.error,
              bloc: _bloc,
            );
            _bloc.state.helpOffers.checkPaginationInitialExtent(
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
                        if(state.helpOffers.items.isNotEmpty)
                        ...state.helpOffers.items.map(
                          (helpOffer) => GestureDetector(
                            onTap: () {
                              Navigator.of(context).pushNamed(
                                PageName.detailsPage,
                                arguments: DetailsPageArguments(
                                  id: helpOffer.id,
                                  isOffer: true,
                                  helpType: helpOffer.helpType,
                                ),
                              );
                            },
                            child: CustomContainer(
                              widget: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  KeyTitleValueRow(
                                    keyTitle: "نوع العرض",
                                    value: homeState.helpTypes
                                        .firstWhere(
                                            (b) => b.id == helpOffer.helpType)
                                        .name,
                                  ),
                                  KeyTitleValueRow(
                                    keyTitle: "المحافظة",
                                    value: homeState.governorates
                                        .firstWhere(
                                            (b) => b.id == helpOffer.cityId)
                                        .name,
                                  ),
                                  if (helpOffer.areaId != null)
                                    KeyTitleValueRow(
                                      keyTitle: "المنطقة",
                                      value: homeState.governorates
                                          .firstWhere((b) =>
                                      b.id == helpOffer.cityId)
                                          .cities
                                          .firstWhere((b) =>
                                      b.id == helpOffer.areaId)
                                          .name,
                                    ),
                                  if (helpOffer.areaId == null)
                                    const KeyTitleValueRow(
                                      keyTitle: "المنطقة",
                                      value: 'غير محددة',
                                    ),
                                  KeyTitleValueRow(
                                    keyTitle: "التاريخ",
                                    value:
                                        "${helpOffer.createdAt.substring(0, 10)} - ${helpOffer.createdAt.substring(11, 16)}",
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
                        ),
                        if (!state.helpOffers.isFinished &&
                            state.helpOffers.items.isNotEmpty)
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
                  if (state.helpOffers.items.isEmpty && !state.isLoading)
                    Padding(
                      padding: EdgeInsets.only(
                        top: 100.h,
                      ),
                      child: const EmptyPage(
                        iconPath: IconsAssets.donation,
                        description:
                            "لا توجد عروض للمساعدة حالياً، في حال وجود عروض للمساعدة ستظهر لك هنا",
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

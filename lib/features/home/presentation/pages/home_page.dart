import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

import '../../../../core/util/generate_screen.dart';
import '../../../../injection.dart';
import '../../../help_offers/presentation/pages/help_offers_page.dart';
import '../../../help_requests/presentation/pages/help_requests_page.dart';
import '../../../helpful_information/presentation/pages/helpful_information_page.dart';
import '../../../history/presentation/bloc/history_bloc.dart';
import '../../../history/presentation/pages/history_page.dart';
import '../bloc/home_bloc.dart';
import '../bloc/home_state.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _bloc = sl<HomeBloc>();

  final _bottomBarKey = GlobalKey<GNavState>();

  final _historyBloc = sl<HistoryBloc>();

  @override
  void initState() {
    _pages = [
      const HelpRequestsPage(),
      const HelpOffersPage(),
      HistoryPage(bloc: _historyBloc),
      const HelpfulInformationPage(),
    ];
    _bloc.addGetAllGovernoratesEvent();
    _bloc.addGetAllHelpTypesEvent();
    super.initState();
  }

  late final List<Widget> _pages;

  int _selectedIndex = 0;

  void _changePage(int index) {
    if (index != _selectedIndex) {
      setState(() {
        _selectedIndex = index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<HomeBloc, HomeState>(
      bloc: _bloc,
      listener: (context, state) {
        if (state.isUnauthorized) {
          _bloc.reInitState(onStateReInitialized: () {
            Navigator.of(context).pushNamedAndRemoveUntil(
              PageName.splashPage,
              (route) => false,
            );
          });
        }
      },
      child: WillPopScope(
        onWillPop: () async {
          // if the current page is not the home page => navigate to home page
          if (_selectedIndex != 0) {
            setState(() {
              _selectedIndex = 0;
              _bottomBarKey.currentState!.selectedIndex = 0;
            });
            return false;
          }
          // else close the pop up the application
          return true;
        },
        child: Scaffold(
          backgroundColor: Theme.of(context).colorScheme.background,
          appBar: AppBar(
            title: const Text("????????????"),
            actions: [
              IconButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(PageName.aboutUsPage);
                },
                icon: const Icon(MdiIcons.informationOutline),
                tooltip: "???? ??????",
              ),
              IconButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (_) => AlertDialog(
                      title: const Text("?????????? ????????????"),
                      content:
                          const Text("???? ?????? ?????????? ???? ?????? ???????? ?????????? ????????????"),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: const Text("????"),
                        ),
                        TextButton(
                          onPressed: () {
                            _bloc.addLogoutEvent();
                            Navigator.of(context).pop();
                          },
                          child: const Text("??????"),
                        ),
                      ],
                    ),
                  );
                },
                icon: const Icon(MdiIcons.logout),
                tooltip: "???????? ????????????",
              ),
            ],
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
          floatingActionButton: (_selectedIndex == 2)
              ? SpeedDial(
                  overlayColor:
                      Theme.of(context).colorScheme.shadow.withOpacity(0.1),
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  children: [
                    SpeedDialChild(
                      label: "?????? ????????????",
                      onTap: () {
                        Navigator.of(context).pushNamed(
                          PageName.formPage,
                          arguments: FromPageArguments(
                            isRequest: true,
                            onSuccess: _historyBloc.addGetHelpHistoryEvent,
                          ),
                        );
                      },
                      child: Icon(
                        MdiIcons.handshakeOutline,
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                    ),
                    SpeedDialChild(
                      onTap: () {
                        Navigator.of(context).pushNamed(
                          PageName.formPage,
                          arguments: FromPageArguments(
                            isRequest: false,
                            onSuccess: _historyBloc.addGetHelpHistoryEvent,
                          ),
                        );
                      },
                      label: "?????? ????????",
                      child: Icon(
                        MdiIcons.handHeartOutline,
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                    ),
                  ],
                  child: Icon(
                    MdiIcons.plus,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                )
              : null,
          body: _pages[_selectedIndex],
          bottomNavigationBar: GNav(
            key: _bottomBarKey,
            selectedIndex: _selectedIndex,
            onTabChange: _changePage,
            haptic: true,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            backgroundColor: Theme.of(context).colorScheme.secondary,
            tabBorderRadius: 25.r,
            tabMargin: EdgeInsets.symmetric(
              vertical: 10.h,
              horizontal: 5.w,
            ),
            curve: Curves.easeIn,
            duration: const Duration(milliseconds: 300),
            gap: 5,
            color: Theme.of(context).colorScheme.background,
            activeColor: Theme.of(context).colorScheme.secondary,
            iconSize: 24.sp,
            tabBackgroundColor: Theme.of(context).colorScheme.primary,
            padding: EdgeInsets.symmetric(
              horizontal: 19.w,
              vertical: 10.h,
            ),
            // navigation bar padding
            tabs: const [
              GButton(
                icon: MdiIcons.handshakeOutline,
                text: '?????????? ????????????????',
              ),
              GButton(
                icon: MdiIcons.handHeartOutline,
                text: '???????? ????????????',
              ),
              GButton(
                icon: MdiIcons.history,
                text: '??????????????',
              ),
              GButton(
                icon: MdiIcons.contactsOutline,
                text: '?????????????? ????????',
              )
            ],
          ),
        ),
      ),
    );
  }
}

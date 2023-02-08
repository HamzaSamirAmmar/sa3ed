import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../../../core/util/generate_screen.dart';
import '../../../help_offers/presentation/pages/help_offers_page.dart';
import '../../../help_requests/presentation/pages/help_requests_page.dart';
import '../../../helpful_information/presentation/pages/helpful_information_page.dart';
import '../../../history/presentation/pages/history_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Widget> _pages = [
    const HelpRequestsPage(),
    const HelpOffersPage(),
    const HistoryPage(),
    const HelpfulInformationPage(),
  ];

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
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        title: const Text("سَاعِد"),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed(PageName.aboutUsPage);
            },
            icon: const Icon(MdiIcons.informationOutline),
            tooltip: "من نحن",
          ),
        ],
      ),
      floatingActionButton: (_selectedIndex == 1 || _selectedIndex == 0)
          ? FloatingActionButton(
              onPressed: () {
                Navigator.of(context).pushNamed(
                  PageName.formPage,
                  arguments: _selectedIndex == 0,
                );
              },
              backgroundColor: Theme.of(context).colorScheme.primary,
              child: Icon(
                MdiIcons.plus,
                color: Theme.of(context).colorScheme.secondary,
              ),
            )
          : null,
      body: _pages[_selectedIndex],
      bottomNavigationBar: GNav(
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
            text: 'طلبات المساعدة',
          ),
          GButton(
            icon: MdiIcons.handHeartOutline,
            text: 'عروض المساعدة',
          ),
          GButton(
            icon: MdiIcons.history,
            text: 'بياناتي',
          ),
          GButton(
            icon: MdiIcons.contactsOutline,
            text: 'معلومات هامة',
          )
        ],
      ),
    );
  }
}

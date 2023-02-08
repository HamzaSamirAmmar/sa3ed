import 'package:flutter/material.dart';

import '../../../../core/util/constants.dart';
import '../../../../core/widgets/empty_page.dart';

class HelpOffersPage extends StatefulWidget {
  const HelpOffersPage({Key? key}) : super(key: key);

  @override
  State<HelpOffersPage> createState() => _HelpOffersPageState();
}

class _HelpOffersPageState extends State<HelpOffersPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [],
            ),
          ),
          const EmptyPage(
            iconPath: IconsAssets.donation,
            description:
            "لا توجد عروض للمساعدة حالياً، في حال وجود طلبات للمساعدة ستظهر لك هنا",
          ),
        ],
      ),
    );
  }
}

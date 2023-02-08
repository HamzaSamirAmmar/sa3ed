import 'package:flutter/material.dart';

import '../../../../core/util/constants.dart';
import '../../../../core/widgets/empty_page.dart';

class HelpRequestsPage extends StatefulWidget {
  const HelpRequestsPage({Key? key}) : super(key: key);

  @override
  State<HelpRequestsPage> createState() => _HelpRequestsPageState();
}

class _HelpRequestsPageState extends State<HelpRequestsPage> {
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
            iconPath: IconsAssets.handsSupportWithLove,
            description:
            "لا توجد طلبات للمساعدة حالياً، في حال وجود طلبات للمساعدة ستظهر لك هنا",
          ),
        ],
      ),
    );
  }
}

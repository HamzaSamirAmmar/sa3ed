import 'package:flutter/material.dart';
import 'package:sa3ed/core/util/constants.dart';
import 'package:sa3ed/core/widgets/empty_page.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
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
            iconPath: IconsAssets.handsSupport,
            description:
                "لا يوجد لديك عروض أو طلبات للمساعدة حالياً، في حال كان لديك أية عروض أو طلبات ستظهر لك هنا لكي تتكمن من حذفها في حال تمت تلبيتها",
          ),
        ],
      ),
    );
  }
}

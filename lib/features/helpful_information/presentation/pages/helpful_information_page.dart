import 'package:flutter/material.dart';

class HelpfulInformationPage extends StatefulWidget {
  const HelpfulInformationPage({Key? key}) : super(key: key);

  @override
  State<HelpfulInformationPage> createState() => _HelpfulInformationPageState();
}

class _HelpfulInformationPageState extends State<HelpfulInformationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Text("Helpful information"),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class FormPage extends StatefulWidget {
  final bool isHelpRequest;

  const FormPage({
    Key? key,
    required this.isHelpRequest,
  }) : super(key: key);

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        title: Text(widget.isHelpRequest ? "طلب مساعدة" : "عرض مساعدة"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(),
      ),
    );
  }
}

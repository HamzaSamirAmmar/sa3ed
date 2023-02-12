import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class KeyTitleValueRow extends StatelessWidget {
  final String keyTitle;
  final String value;

  const KeyTitleValueRow({
    Key? key,
    required this.keyTitle,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: 10.h,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            keyTitle == "-" ? "- " : "$keyTitle: ",
            style: TextStyle(
              color: Theme.of(context).colorScheme.secondary,
              fontWeight: FontWeight.bold,
              fontSize: 18.sp,
            ),
          ),
          Flexible(
            child: Text(
              value,
              style: TextStyle(
                // color: Theme.of(context).colorScheme.secondary,
                // fontWeight: FontWeight.bold,
                fontSize: 16.sp,
              ),
              overflow: TextOverflow.visible,
            ),
          ),
        ],
      ),
    );
  }
}

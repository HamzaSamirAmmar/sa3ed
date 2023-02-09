import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomContainer extends StatelessWidget {
  final Widget widget;

  const CustomContainer({
    Key? key,
    required this.widget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 430.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Theme.of(context).colorScheme.primary.withOpacity(0.25),
        border: Border.all(
          color: Theme.of(context).colorScheme.secondary.withOpacity(0.4),
          width: 1,
        )
      ),
      child: Padding(
        padding: EdgeInsets.only(
          left: 20.w,
          right: 20.w,
          top: 20.h,
          bottom: 10.h,
        ),
        child: widget,
      ),
    );
  }
}

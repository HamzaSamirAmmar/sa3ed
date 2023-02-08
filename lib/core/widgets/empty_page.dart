import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EmptyPage extends StatelessWidget {
  final String iconPath;
  final String description;

  const EmptyPage({
    Key? key,
    required this.iconPath,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          iconPath,
          width: 400.w,
          height: 180.h,
        ),
        Padding(
          padding: EdgeInsets.only(
            top: 35.h,
            left: 25.w,
            right: 25.w,
          ),
          child: Text(
            description,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }
}

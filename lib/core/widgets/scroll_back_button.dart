import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ScrollBackButton extends StatelessWidget {
  final bool isVisible;
  final ScrollController controller;

  const ScrollBackButton({
    Key? key,
    required this.isVisible,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 10.h,
      right: 20.w,
      child: AnimatedSlide(
        duration: const Duration(milliseconds: 300),
        offset: isVisible ? Offset.zero : const Offset(0, 2),
        child: AnimatedOpacity(
          duration: const Duration(milliseconds: 300),
          opacity: isVisible ? 1 : 0,
          child: Container(
            height: 40.h,
            width: 40.w,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.tertiary.withOpacity(0.5),
              shape: BoxShape.circle,
            ),
            child: IconButton(
              padding: EdgeInsets.zero,
              icon: Icon(
                Icons.arrow_upward_outlined,
                color: Theme.of(context).colorScheme.secondary,
                size: 30.sp,
              ),
              onPressed: () async {
                controller.animateTo(
                  0,
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.linear,
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

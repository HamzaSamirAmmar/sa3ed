import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sa3ed/core/util/constants.dart';

import '../util/mixins.dart';

class CustomDropDownButton<T extends Selectable> extends StatelessWidget {
  final String? label;
  final String defaultValue;
  final List<T> items;
  final T? selectedItem;
  final Function(T) onItemSelected;
  final String errorText;
  final bool isValid;

  const CustomDropDownButton({
    Key? key,
    required this.defaultValue,
    required this.items,
    this.errorText = "",
    this.isValid = true,
    this.label,
    this.selectedItem,
    required this.onItemSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 10.h,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (label != null) Text(label!),
          if (label != null) SizedBox(height: 10.h),
          DropdownButtonHideUnderline(
            child: DropdownButton2(
              isExpanded: true,
              style: TextStyle(
                color: Theme.of(context).colorScheme.secondary,
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
                fontFamily: "Tajawal",
              ),
              customButton: AbsorbPointer(
                absorbing: items.isNotEmpty,
                child: GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: () {
                    message(
                      context: context,
                      message: "جاري الحصول على المعلومات، يرجى الإنتظار",
                      isError: true,
                      bloc: null,
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: isValid ? Theme.of(context).colorScheme.primary : Colors.red,
                        width: 1.sp,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(25.r),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 5.h,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            selectedItem == null
                                ? defaultValue
                                : selectedItem!.selectValue,
                            style: const TextStyle(
                              fontFamily: "Tajawal",
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10.w),
                            child: const Icon(
                              Icons.keyboard_arrow_down_outlined,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              value: selectedItem,
              buttonDecoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25.r),
              ),
              dropdownDecoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25.r),
              ),
              items: items.map((item) {
                return DropdownMenuItem<T>(
                  value: item,
                  alignment: Alignment.center,
                  child: Text(
                    item.selectValue,
                    style: const TextStyle(
                      fontFamily: "Tajawal",
                    ),
                  ),
                );
              }).toList(),
              onChanged: (type) {
                if (type != null) {
                  onItemSelected(type);
                }
              },
            ),
          ),
          if (!isValid)
            Padding(
              padding: EdgeInsets.only(
                top: 8.h,
              ),
              child: Text(
                errorText,
                style: TextStyle(
                  fontSize: 14.sp,
                  color: Colors.red,
                ),
              ),
            )
        ],
      ),
    );
  }
}

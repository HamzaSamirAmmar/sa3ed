import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatefulWidget {
  final int maxLines;
  final String hint;
  final String label;
  final TextEditingController controller;
  final TextInputType textInputType;
  final bool extraPadding;
  final List<TextInputFormatter>? inputFormatters;
  final GlobalKey<FormState> formKey;
  final String? Function(String? text) validator;

  const CustomTextField({
    Key? key,
    required this.hint,
    required this.formKey,
    this.maxLines = 1,
    this.inputFormatters,
    this.extraPadding = true,
    required this.label,
    required this.controller,
    required this.validator,
    this.textInputType = TextInputType.text,
  }) : super(key: key);

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: widget.extraPadding ? 20.h : 10.h),
        Text(widget.label),
        SizedBox(height: 10.h),
        TextFormField(
          style: TextStyle(
            color: Theme.of(context).colorScheme.secondary,
            fontWeight: FontWeight.w500,
            fontSize: 16.sp,
          ),
          inputFormatters: widget.inputFormatters,
          controller: widget.controller,
          keyboardType: widget.textInputType,
          textInputAction: TextInputAction.next,
          maxLines: widget.maxLines,
          decoration: InputDecoration(
            hintText: widget.hint,
            hintStyle: TextStyle(
              color: Theme.of(context).colorScheme.secondary.withOpacity(0.5),
              fontWeight: FontWeight.w500,
              fontSize: 16.sp,
            ),
            contentPadding: EdgeInsets.symmetric(
              horizontal: 21.w,
              vertical: 10.h,
            ),
            enabledBorder: outlineInputBorder(null),
            disabledBorder: outlineInputBorder(null),
            focusedBorder: outlineInputBorder(null),
            errorBorder:  outlineInputBorder(Colors.red),
            focusedErrorBorder:  outlineInputBorder(Colors.red),
          ),
          onChanged: (_) {
            // widget.formKey.currentState?.validate();
          },
          validator: widget.validator,
        ),
      ],
    );
  }

  OutlineInputBorder outlineInputBorder(Color? color) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(25.r),
      ),
      borderSide: BorderSide(
        color: color?? Theme.of(context).colorScheme.primary,
        width: 1.sp,
      ),
    );
  }
}

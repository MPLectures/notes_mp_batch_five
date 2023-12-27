import 'package:flutter/material.dart';
import 'package:notes_mp_batch_five/helpers/constants.dart';
import 'package:sizer/sizer.dart';

class NotesTextField extends StatelessWidget {
  String hintText;
  IconData? suffixIcon;
  bool? isHidden;
  double? fontSize;
  bool isFilled;
  int? maxLines;
  VoidCallback? onIconTap;
  TextEditingController? controller;

  NotesTextField({
    required this.hintText,
    this.suffixIcon,
    this.isHidden,
    this.fontSize,
    required this.isFilled,
    this.maxLines,
    this.onIconTap,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 6.5.h,
      child: TextFormField(
        maxLines: maxLines ?? 1,
        obscureText: isHidden ?? false,
        obscuringCharacter: "*",
        controller: controller,
        decoration: InputDecoration(
          suffixIcon: GestureDetector(
            onTap: onIconTap,
            child: Icon(
              suffixIcon,
              color: Colors.grey,
            ),
          ),
          filled: isFilled,
          fillColor: isFilled ? NotesColor.textFieldFilledColor : null,
          contentPadding:
          EdgeInsets.symmetric(horizontal: 10.sp, vertical: 3.sp),
          hintText: hintText,
          hintStyle: TextStyle(
            color: NotesColor.textFieldBorderColor,
            fontSize: fontSize ?? 13.sp,
            fontFamily: "Poppins",
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: isFilled
                ? BorderSide.none
                : BorderSide(
              color: NotesColor.textFieldBorderColor,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: isFilled
                ? BorderSide.none
                : BorderSide(
              color: NotesColor.textFieldBorderColor,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: isFilled
                ? BorderSide.none
                : BorderSide(
              color: NotesColor.textFieldBorderColor,
            ),
          ),
        ),
      ),
    );
  }
}

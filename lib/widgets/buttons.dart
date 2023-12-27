import 'package:flutter/material.dart';
import 'package:notes_mp_batch_five/helpers/constants.dart';
import 'package:sizer/sizer.dart';

class NotesButton extends StatelessWidget {
  Color buttonColor;
  Color textColor = NotesColor.appColor;
  Color backGroundColor = NotesColor.whiteColor;
  String text;
  double? borderRadius;
  VoidCallback? onButtonTap;
  bool isDoubleIcon;

  NotesButton({
    required this.buttonColor,
    required this.text,
    this.borderRadius,
    required this.isDoubleIcon,
    this.onButtonTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onButtonTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 9.sp, horizontal: 15.w),
        decoration: BoxDecoration(
          color:
              buttonColor == NotesColor.appColor ? textColor : backGroundColor,
          borderRadius: BorderRadius.circular(borderRadius ?? 30),
        ),
        child: isDoubleIcon
            ? Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(),
                  Text(
                    text,
                    style: TextStyle(
                      color: buttonColor == NotesColor.appColor
                          ? backGroundColor
                          : textColor,
                      fontWeight: FontWeight.w400,
                      fontFamily: "Poppins",
                      fontSize: 13.sp,
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward,
                    color: buttonColor == NotesColor.appColor
                        ? backGroundColor
                        : textColor,
                  )
                ],
              )
            : Text(
                text,
                style: TextStyle(
                  color: buttonColor == NotesColor.appColor
                      ? backGroundColor
                      : textColor,
                  fontWeight: FontWeight.w400,
                  fontFamily: "Poppins",
                  fontSize: 13.sp,
                ),
              ),
      ),
    );
  }
}

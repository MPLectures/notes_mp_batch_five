import 'package:flutter/material.dart';
import 'package:notes_mp_batch_five/helpers/constants.dart';
import 'package:notes_mp_batch_five/views/screens/screen_login.dart';
import 'package:notes_mp_batch_five/widgets/buttons.dart';
import 'package:sizer/sizer.dart';
import 'package:get/get.dart';

class ScreenOnBoarding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: NotesColor.appColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            children: [
              Image.asset("assets/images/Illustration.png")
                  .paddingSymmetric(horizontal: 10.sp),
              Text(
                "Jot Down anything you want to achieve, today or in the future",
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                  color: NotesColor.whiteColor,
                ),
              ),
            ],
          ),
          GestureDetector(
            onTap: () {
              Get.to(ScreenLogin());
            },
            child: NotesButton(
              isDoubleIcon: true,
              buttonColor: NotesColor.whiteColor,
              text: "Let's Get Started",
            ),
          )
        ],
      ).paddingSymmetric(horizontal: 15.sp),
    );
  }
}

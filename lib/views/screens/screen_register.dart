import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:notes_mp_batch_five/helpers/constants.dart';
import 'package:notes_mp_batch_five/views/screens/screen_login.dart';
import 'package:notes_mp_batch_five/widgets/buttons.dart';
import 'package:notes_mp_batch_five/widgets/text_field.dart';
import 'package:sizer/sizer.dart';

class ScreenRegister extends StatelessWidget {
  const ScreenRegister({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: NotesColor.whiteColor,
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Icon(
            Icons.arrow_back_ios,
            size: 12.sp,
            color: NotesColor.appColor,
          ),
        ),
        centerTitle: false,
        title: Text(
          "Back to Login",
          style: TextStyle(
            color: NotesColor.appColor,
            fontWeight: FontWeight.w500,
            fontSize: 13.sp,
            fontFamily: "Poppins",
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Register",
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w700,
                  fontSize: 28.sp,
                ),
              ).paddingOnly(top: 5.h, bottom: 1.h),
              Text(
                "And start taking notes",
                style: TextStyle(
                  fontFamily: "Poppins",
                  color: NotesColor.textColor,
                  fontSize: 13.sp,
                ),
              ),
              Text(
                "Full Name",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontFamily: "Poppins",
                  fontSize: 13.sp,
                ),
              ).paddingOnly(top: 4.h, bottom: 1.5.h),
              NotesTextField(
                isFilled: false,
                hintText: "Example: John Doe",
              ),
              Text(
                "Email Address",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontFamily: "Poppins",
                  fontSize: 13.sp,
                ),
              ).paddingOnly(top: 4.h, bottom: 1.5.h),
              NotesTextField(
                isFilled: false,
                hintText: "Example: johndoe@gmail.com",
              ),
              Text(
                "Password",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontFamily: "Poppins",
                  fontSize: 13.sp,
                ),
              ).paddingOnly(top: 4.h, bottom: 1.5.h),
              NotesTextField(
                isFilled: false,
                hintText: "*********",
                isHidden: true,
                suffixIcon: Icons.visibility_outlined,
              ),
              Text(
                "Retype Password",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontFamily: "Poppins",
                  fontSize: 13.sp,
                ),
              ).paddingOnly(top: 4.h, bottom: 1.5.h),
              NotesTextField(
                isFilled: false,
                hintText: "*********",
                isHidden: true,
                suffixIcon: Icons.visibility_outlined,
              ).paddingOnly(bottom: 4.h),
              NotesButton(
                buttonColor: NotesColor.appColor,
                text: "Register",
                isDoubleIcon: true,
              ),
              IntrinsicHeight(
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 1,
                        indent: 15.sp,
                        endIndent: 15.sp,
                      ),
                    ),
                    Text(
                      "Or",
                      style: TextStyle(
                        color: NotesColor.textColor,
                        fontSize: 10.sp,
                        fontFamily: "Poppins",
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 1,
                        indent: 15.sp,
                        endIndent: 15.sp,
                      ),
                    ),
                  ],
                ),
              ).paddingSymmetric(vertical: 3.h),
              Container(
                padding: EdgeInsets.symmetric(vertical: 9.sp),
                decoration: BoxDecoration(
                    color: NotesColor.whiteColor,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(
                      color: NotesColor.textFieldBorderColor,
                    )),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(),
                    Image.asset("assets/images/google.png"),
                    Text(
                      "Register with Google",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontFamily: "Poppins",
                        fontSize: 13.sp,
                      ),
                    ),
                    SizedBox(),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account? ",
                    style: TextStyle(
                      color: NotesColor.appColor,
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w600,
                      fontFamily: "Poppins",
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(ScreenLogin());
                    },
                    child: Text(
                      "Login here",
                      style: TextStyle(
                        color: NotesColor.appColor,
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w600,
                        fontFamily: "Poppins",
                      ),
                    ),
                  ),
                ],
              ).paddingOnly(bottom: 10.sp, top: 4.h)
            ],
          ).paddingSymmetric(horizontal: 15.sp),
        ),
      ),
    );
  }
}

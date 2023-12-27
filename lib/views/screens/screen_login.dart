import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:notes_mp_batch_five/controller/notes_controller.dart';
import 'package:notes_mp_batch_five/helpers/constants.dart';
import 'package:notes_mp_batch_five/views/layouts/layout_navigation.dart';
import 'package:notes_mp_batch_five/views/screens/screen_register.dart';
import 'package:notes_mp_batch_five/widgets/buttons.dart';
import 'package:notes_mp_batch_five/widgets/text_field.dart';
import 'package:sizer/sizer.dart';

class ScreenLogin extends StatelessWidget {
  // Rx<bool> obSecureText = true.obs;
  // IconData suffixIcon = Icons.visibility_outlined;

  @override
  Widget build(BuildContext context) {

    // double screenHeight = MediaQuery.of(context).size.height;
    // double screenWidth = MediaQuery.of(context).size.width;

    double screenHeight = Get.height;
    double screenWidth = Get.width;


    NotesController controller = Get.put(NotesController());
    print("Login Screen has rebuild");
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Let’s Login",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w700,
                      fontSize: 28.sp,
                    ),
                  ).paddingOnly(top: 10.h, bottom: 1.h),
                  Text(
                    "And notes your idea",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      color: NotesColor.textColor,
                      fontSize: 13.sp,
                    ),
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
                  Obx(() {
                    return NotesTextField(
                      isFilled: false,
                      hintText: "*********",
                      isHidden: controller.hiddenPassword.value,
                      suffixIcon: controller.hiddenPassword.value
                          ? controller.icon = Icons.visibility_outlined
                          : Icons.visibility_off_outlined,
                      onIconTap: () {
                        controller.togglePassword();
                      },
                    );
                  }),
                  Text(
                    "Forgot Password",
                    style: TextStyle(
                      color: NotesColor.appColor,
                      fontFamily: "Poppins",
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w600,
                      decoration: TextDecoration.underline,
                    ),
                  ).paddingOnly(top: 1.h, bottom: 4.h),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LayoutNavigation(),
                        ),
                      );
                    },
                    child: NotesButton(
                      isDoubleIcon: true,
                      buttonColor: NotesColor.appColor,
                      text: "Login",
                    ),
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
                          "Login with Google",
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
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don’t have any account? ",
                  style: TextStyle(
                    color: NotesColor.appColor,
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w600,
                    fontFamily: "Poppins",
                  ),
                ),
                GestureDetector(
                  onTap: () {
                   Get.to(ScreenRegister());
                  },
                  child: Text(
                    "Register here",
                    style: TextStyle(
                      color: NotesColor.appColor,
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w600,
                      fontFamily: "Poppins",
                    ),
                  ),
                ),
              ],
            ).paddingOnly(bottom: 20.sp)
          ],
        ).paddingSymmetric(horizontal: 15.sp),
      ),
    );
  }
}

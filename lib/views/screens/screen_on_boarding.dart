import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:notes_mp_batch_five/controller/notes_controller.dart';
import 'package:notes_mp_batch_five/helpers/constants.dart';
import 'package:notes_mp_batch_five/views/screens/screen_login.dart';
import 'package:notes_mp_batch_five/widgets/buttons.dart';
import 'package:sizer/sizer.dart';
import 'package:get/get.dart';

class ScreenOnBoarding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    NotesController controller = Get.put(NotesController());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: NotesColor.appColor,
        elevation: 0,
        actions: [
          Obx(() {
            return GestureDetector(
              onTap: () {
                Get.off(ScreenLogin());
              },
              child: Text(
                controller.pageIndex == controller.images.length - 1
                    ? ""
                    : "Skip",
              ),
            );
          }).paddingOnly(right: 10.sp)
        ],
      ),
      backgroundColor: NotesColor.appColor,
      body: PageView.builder(
        onPageChanged: controller.onPageChanged,
        controller: controller.pageController,
        itemCount: controller.images.length,
        itemBuilder: (context, index) => Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                Container(
                  height: 300,
                  width: 200,
                  child: SvgPicture.asset(controller.images[index])
                      .paddingSymmetric(horizontal: 10.sp),
                ),
                Text(
                  controller.heading[index],
                  textAlign: TextAlign.center,
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
                controller.pageIndex == controller.images.length - 1
                    ? Get.to(ScreenLogin())
                    : controller.pageController.nextPage(
                        duration: Duration(milliseconds: 100),
                        curve: Curves.bounceIn,
                      );
              },
              child: Obx(
                () {
                  return Container(
                    decoration: BoxDecoration(
                        color: NotesColor.whiteColor,
                        borderRadius: BorderRadius.circular(30)),
                    child: controller.pageIndex == controller.images.length - 1
                        ? Text("Get Started")
                            .paddingSymmetric(horizontal: 25.sp, vertical: 8.sp)
                        : Icon(Icons.arrow_forward).paddingAll(10.sp),
                  );
                },
              ),
            )
          ],
        ).paddingSymmetric(horizontal: 15.sp),
      ),
    );
  }
}

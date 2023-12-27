import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:notes_mp_batch_five/helpers/constants.dart';
import 'package:sizer/sizer.dart';

class LayoutHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:
          // notesList.isNotEmpty
          //     ? ListView.builder(
          //         // shrinkWrap: true,
          //         physics: BouncingScrollPhysics(),
          //         itemCount: 2,
          //         itemBuilder: (context, i) => Card(
          //           color: NotesColor.appColor,
          //           child: ListItem(
          //             title: notesList[i]['title'] ?? '',
          //             data: notesList[i]['data'] ?? '',
          //           ),
          //         ),
          //       )
          //     :
          Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/images/Illustration1.png").paddingOnly(top: 5.h),
          Text(
            "Start Your Journey",
            style: TextStyle(
              fontFamily: "Poppins",
              fontWeight: FontWeight.w900,
              fontSize: 20.sp,
            ),
          ).paddingOnly(top: 10.sp, bottom: 10.sp),
          Text(
            "Every big step start with small step. Notes your first idea and start your journey!",
            style: TextStyle(
              color: NotesColor.textColor,
              fontSize: 11.sp,
              fontFamily: "Poppins",
            ),
            textAlign: TextAlign.center,
          ),
          Image.asset(
            "assets/images/Arrow.png",
            scale: 3.0,
          )
        ],
      ).paddingSymmetric(horizontal: 14.w),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:notes_mp_batch_five/controller/notes_controller.dart';
import 'package:notes_mp_batch_five/helpers/constants.dart';
import 'package:notes_mp_batch_five/views/layouts/item_drawer.dart';
import 'package:notes_mp_batch_five/views/layouts/item_list.dart';
import 'package:sizer/sizer.dart';

class LayoutHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    NotesController controller = Get.put(NotesController());
    return Obx(() {
      return Scaffold(
        drawer: ItemDrawer(),
        appBar: AppBar(
          // automaticallyImplyLeading: false,
          // leading: Builder(builder: (context) {
          //   return GestureDetector(
          //     onTap: () {
          //       Scaffold.of(context).openEndDrawer();
          //     },
          //     child: Icon(Icons.menu),
          //   );
          // }),
          title: Text("Home"),
          centerTitle: true,
          actions: [
            GestureDetector(
              onTap: () {
                controller.notesList.clear();
                Scaffold.of(context).openEndDrawer();
              },
              child: Icon(Icons.delete).paddingOnly(right: 10.sp),
            )
          ],
        ),
        body: SafeArea(
          child: controller.notesList.isNotEmpty
              ? ListView.builder(
                  physics: BouncingScrollPhysics(),
                  itemCount: controller.notesList.length,
                  itemBuilder: (context, i) => Card(
                    color: NotesColor.appColor,
                    child: ListItem(
                      title: controller.notesList[i]['title'] ?? '',
                      data: controller.notesList[i]['data'] ?? '',
                    ),
                  ),
                )
              : Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/images/Illustration1.png")
                        .paddingOnly(top: 5.h),
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
                    ),
                  ],
                ).paddingSymmetric(horizontal: 14.w),
        ),
      );
    });
  }
}


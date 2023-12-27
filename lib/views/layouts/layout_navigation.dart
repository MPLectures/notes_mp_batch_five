import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:notes_mp_batch_five/controller/controller.dart';
import 'package:notes_mp_batch_five/helpers/constants.dart';
import 'package:notes_mp_batch_five/views/layouts/layout_home.dart';
import 'package:notes_mp_batch_five/views/layouts/layout_profile.dart';
import 'package:notes_mp_batch_five/views/screens/screen_add_notes.dart';
import 'package:sizer/sizer.dart';

class LayoutNavigation extends StatelessWidget {
  List<Widget> _layoutBottomBar = [
    LayoutHome(),
    LayoutProfile(),
  ];

  @override
  Widget build(BuildContext context) {
    TestController controller = Get.put(TestController());
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        backgroundColor: NotesColor.appColor,
        onPressed: () {
          Get.to(ScreenAddNotes());
        },
        child: Icon(
          Icons.add,
          color: NotesColor.whiteColor,
          size: 20.sp,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: Obx(() => _layoutBottomBar[controller.selectedIndex.value]),
      bottomNavigationBar: Obx(
        () => AnimatedBottomNavigationBar(
          activeColor: NotesColor.appColor,
          inactiveColor: NotesColor.textColor,
          icons: [
            Icons.home,
            Icons.person,
          ],
          gapLocation: GapLocation.center,
          notchSmoothness: NotchSmoothness.defaultEdge,
          activeIndex: controller.selectedIndex.value,
          onTap: (int value) {
            controller.selectedIndex.value = value;
          },
        ),
      ),
    );
  }
}

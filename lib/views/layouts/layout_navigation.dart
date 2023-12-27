import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:notes_mp_batch_five/helpers/constants.dart';
import 'package:notes_mp_batch_five/views/layouts/layout_home.dart';
import 'package:notes_mp_batch_five/views/layouts/layout_profile.dart';
import 'package:notes_mp_batch_five/views/screens/screen_add_notes.dart';
import 'package:sizer/sizer.dart';

class LayoutNavigation extends StatefulWidget {
  @override
  State<LayoutNavigation> createState() => _LayoutNavigationState();
}

class _LayoutNavigationState extends State<LayoutNavigation> {
  int selectedIndex = 0;

  List<Widget> _layoutBottomBar = [
    LayoutHome(),
    LayoutProfile(),
  ];

  @override
  Widget build(BuildContext context) {
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
      body: _layoutBottomBar[selectedIndex],
      bottomNavigationBar: AnimatedBottomNavigationBar(
        activeColor: NotesColor.appColor,
        inactiveColor: NotesColor.textColor,
        icons: [
          Icons.home,
          Icons.person,
        ],
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.defaultEdge,
        activeIndex: selectedIndex,
        onTap: (int value) {
          setState(() {
            selectedIndex = value;
          });
        },
      ),
    );
  }
}

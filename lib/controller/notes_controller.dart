import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NotesController extends GetxController {
  Rx<int> count = 0.obs;
  Rx<int> selectedIndex = 0.obs;
  Rx<bool> switchValue = false.obs;
  Rx<bool> hiddenPassword = false.obs;
  IconData icon = Icons.visibility_outlined;
  RxList<Map<String, String>> notesList = <Map<String, String>>[].obs;
  List<String> images = [
    "assets/images/illustration_three.svg",
    "assets/images/illustrration_one.svg",
    "assets/images/illutration_two.svg",
  ];

  List<String> heading = [
    "You can search whatever you saved in this app just by single click ",
    "All your notes are well organized and can be seen anytime you want to check",
    "Share your expereince with your friends and save your important notes",
  ];
  RxInt pageIndex = 0.obs;
  final pageController = PageController(initialPage: 0);

  void onPageChanged (int index){
    pageIndex.value = index;
  }



  void togglePassword() {
    hiddenPassword.value = !hiddenPassword.value;
  }
  void addNote(Map<String, String> note) {
    notesList.add(note);
  }
}

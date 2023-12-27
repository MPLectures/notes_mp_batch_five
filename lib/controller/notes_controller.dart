import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NotesController extends GetxController {
  Rx<int> count = 0.obs;
  Rx<int> selectedIndex = 0.obs;
  Rx<bool> switchValue = false.obs;
  Rx<bool> hiddenPassword = false.obs;
  IconData icon = Icons.visibility_outlined;
  RxList<Map<String, String>> notesList = <Map<String, String>>[].obs;


  void togglePassword() {
    hiddenPassword.value = !hiddenPassword.value;
  }
  void addNote(Map<String, String> note) {
    notesList.add(note);
  }
}

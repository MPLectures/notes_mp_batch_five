import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TestController extends GetxController {
  Rx<int> count = 0.obs;
  Rx<bool> switchValue = false.obs;
  Rx<bool> hiddenPassword = false.obs;
  IconData icon = Icons.visibility_outlined;

  void togglePassword() {
    hiddenPassword.value = !hiddenPassword.value;
  }

// void toggle() {
//   switchValue.value = switchValue.value ? false : true;
// }
}

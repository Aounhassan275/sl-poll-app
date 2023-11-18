// ignore_for_file: unused_field

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetController extends GetxController {
  static ResetController instance = Get.find();

  TextEditingController cpasswordController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool obscureTextPassword = true;
  bool obscureTextcPassword = true;

  // Input Toggle button function
  void toggle() {
    obscureTextPassword = !obscureTextPassword;
    update();
  }

  void toggle1() {
    obscureTextcPassword = !obscureTextcPassword;
    update();
  }
}

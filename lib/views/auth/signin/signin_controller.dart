// ignore_for_file: unused_field

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SigninController extends GetxController {
  static SigninController instance = Get.find();

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool obscureTextPassword = true;
  bool obscureTextcPassword = true;

  // Input Toggle button function
  void toggle() {
    obscureTextPassword = !obscureTextPassword;
    update();
  }
}

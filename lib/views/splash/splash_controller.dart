// ignore_for_file: unused_field

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  static SplashController instance = Get.find();

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool obscureTextPassword = true;

  // Input Toggle button function
  void toggle() {
    obscureTextPassword = !obscureTextPassword;
    update();
  }

}

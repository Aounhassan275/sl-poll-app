// ignore_for_file: unused_field

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResultsController extends GetxController {
  static ResultsController instance = Get.find();

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool obscureTextPassword = true;

  // Input Toggle button function
  void toggle() {
    obscureTextPassword = !obscureTextPassword;
    update();
  }

}

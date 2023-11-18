// ignore_for_file: unused_field

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupController extends GetxController {
  static SignupController instance = Get.find();

  TextEditingController emailController = TextEditingController();
  TextEditingController userController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
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

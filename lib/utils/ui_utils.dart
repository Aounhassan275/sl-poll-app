// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:speak_logic_poll/utils/colors.dart';

class UiUtilites {
  static errorSnackbar(String title, String message) {
    Get.snackbar(
      title,
      message,
      colorText: white,
      backgroundGradient: const LinearGradient(
        colors: [Colors.red, Colors.redAccent],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      ),
      duration: const Duration(seconds: 2),
      snackPosition: SnackPosition.BOTTOM,
    );
  }

  static successSnackbar(String message, String title) {
    Get.snackbar(
      title,
      message,
      backgroundColor: maincolor,
      colorText: white,
      duration: const Duration(seconds: 2),
      snackPosition: SnackPosition.BOTTOM,
    );
  }
}

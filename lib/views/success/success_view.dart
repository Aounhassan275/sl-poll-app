// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:speak_logic_poll/components/button.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:speak_logic_poll/routes/app_routes.dart';
import 'package:speak_logic_poll/utils/colors.dart';
import 'package:speak_logic_poll/utils/fontWeight.dart';
import 'package:speak_logic_poll/views/auth/verification/verification_controller.dart';

class SuccessView extends StatefulWidget {
  const SuccessView({super.key});

  @override
  State<SuccessView> createState() => _SuccessViewState();
}

class _SuccessViewState extends State<SuccessView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SizedBox(
            width: MediaQuery.of(context).size.width,

          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width * 0.8,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/Frame 11.png'),
                Padding(
                  padding: const EdgeInsets.only(top:40.0,bottom: 12),
                  
                  child: Text(
                    "Password Recovery\nSuccessful",
                    style: const TextStyle(
                      fontSize: 28,
                      fontWeight: w600,
                      color: maincolor,
                      height: 35 / 28,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Text(
                  "Return to the login screen to enter\n the application",
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: w400,
                    color: maincolor,
                    // height: 30 / 15,
                  ),
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Wrap(
        clipBehavior: Clip.antiAlias,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            padding:
                const EdgeInsets.only(right: 15, left: 15, top: 10, bottom: 20),
            child: MainButton(
              title: 'Return to login',
              onPressed: () {
                Get.toNamed(AppRoutes.signin);
              },
            ),
          ),
        ],
      ),
    );
  }
}

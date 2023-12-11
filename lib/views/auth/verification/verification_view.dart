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

class VerificationView extends StatefulWidget {
  const VerificationView({super.key});

  @override
  State<VerificationView> createState() => _VerificationViewState();
}

class _VerificationViewState extends State<VerificationView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: GetBuilder<VerificationController>(
            builder: (controller) => Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                    maincolor,
                    maincolor,
                    maincolor,
                    maincolor,
                  ])),
                  child: Stack(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Get.toNamed(AppRoutes.forgot);
                        },
                        child: SvgPicture.asset(
                          'assets/images/back.svg',
                          fit: BoxFit.fitWidth,
                          width: double.infinity,
                          height: MediaQuery.of(context).size.height,
                        ),
                      ),
                      Column(
                        children: [
                          Container(
                              width: double.infinity,
                              padding: EdgeInsets.fromLTRB(20, 30, 20, 50),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.arrow_back_ios_new,
                                    color: white,
                                  ),
                                  SizedBox(height: 30),
                                  Text(
                                    "Verification",
                                    style: const TextStyle(
                                      fontSize: 22,
                                      fontWeight: w600,
                                      color: white,
                                    ),
                                  ),
                                  SizedBox(height: 20),
                                  Container(
                                    padding: EdgeInsets.only(left: 20),
                                    decoration: BoxDecoration(
                                        border: Border(
                                            left: BorderSide(color: white))),
                                    child: Text(
                                      "We sen verification code to your email address",
                                      style: const TextStyle(
                                        fontSize: 15,
                                        fontWeight: w400,
                                        color: white,
                                      ),
                                    ),
                                  )
                                ],
                              )),
                          Flexible(
                            child: Container(
                                padding: EdgeInsets.only(left: 20, right: 20),
                                height:
                                    MediaQuery.of(context).size.height * 0.72,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 250, 250, 250),
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(25),
                                        topLeft: Radius.circular(25))),
                                child: SingleChildScrollView(
                                  child: Column(children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 0, right: 0, top: 40),
                                      child: PinCodeTextField(
                                        appContext: context,
                                        pastedTextStyle: TextStyle(
                                          color: Colors.green.shade600,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        length: 5,
                                        blinkWhenObscuring: true,
                                        animationType: AnimationType.fade,
                                        pinTheme: PinTheme(
                                            shape: PinCodeFieldShape.box,
                                            borderWidth: 1.5,
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            fieldHeight: 50,
                                            fieldWidth: 50,
                                            activeFillColor: Colors.white,
                                            selectedColor: maincolor,
                                            selectedFillColor: Colors.white,
                                            inactiveFillColor:
                                                Colors.white.withOpacity(0.7),
                                            inactiveColor:
                                                maincolor.withOpacity(0.3),
                                            activeColor:
                                                maincolor.withOpacity(0.2)),
                                        cursorColor: Colors.black,
                                        animationDuration:
                                            const Duration(milliseconds: 300),
                                        enableActiveFill: true,
                                        enablePinAutofill: true,
                                        controller: controller.pinController,
                                        keyboardType: TextInputType.number,
                                        autovalidateMode:
                                            AutovalidateMode.disabled,
                                        onChanged: (String value) {
                                          // phone = value;
                                          // print(phone);
                                        },
                                      ),
                                    ),
                                  ]),
                                )),
                          ),
                        ],
                      ),
                    ],
                  ),
                )),
      ),
      bottomNavigationBar: Wrap(
        clipBehavior: Clip.antiAlias,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            padding:
                const EdgeInsets.only(right: 15, left: 15, top: 10, bottom: 20),
            child: MainButton(
              title: 'Submit',
              color: pinkColor,
              color1: white,
              onPressed: () {
                Get.toNamed(AppRoutes.reset);
              },
            ),
          ),
        ],
      ),
    );
  }
}

// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:speak_logic_poll/components/button.dart';
import 'package:speak_logic_poll/components/inputfield.dart';
import 'package:speak_logic_poll/routes/app_routes.dart';
import 'package:speak_logic_poll/utils/colors.dart';
import 'package:speak_logic_poll/utils/fontWeight.dart';
import 'package:speak_logic_poll/views/auth/forgot/forgot_controller.dart';

class ForgotView extends StatefulWidget {
  const ForgotView({super.key});

  @override
  State<ForgotView> createState() => _ForgotViewState();
}

class _ForgotViewState extends State<ForgotView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: GetBuilder<ForgotController>(
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
                      SvgPicture.asset(
                        'assets/images/back.svg',
                        fit: BoxFit.fitWidth,
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height,
                      ),
                      Column(
                        children: [
                          Container(
                              width: double.infinity,
                              padding: EdgeInsets.fromLTRB(20, 30, 20, 50),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      Get.toNamed(AppRoutes.signin);
                                    },
                                    child: Icon(
                                      Icons.arrow_back_ios_new,
                                      color: white,
                                    ),
                                  ),
                                  SizedBox(height: 30),
                                  Text(
                                    "Forgot Password",
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
                                      "Opps. It happens to the best of us. Input your email address to fix the issue.",
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
                                          bottom: 4, top: 20),
                                      child: InputField(
                                        // img: 'assets/images/user.svg',
                                        hint: 'Email Address',
                                        controller: controller.emailController,
                                        // validator: (user) =>
                                        //     Validators.emptyStringValidator(
                                        //         user, 'email'),
                                        type: TextInputType.emailAddress,
                                        fillcolor: grey.withOpacity(0.2),
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
                Get.toNamed(AppRoutes.verification);
              },
            ),
          ),
        ],
      ),
    );
  }
}

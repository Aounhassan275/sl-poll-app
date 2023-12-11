// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:speak_logic_poll/components/button.dart';
import 'package:speak_logic_poll/components/inputfield.dart';
import 'package:speak_logic_poll/components/password_inputfield.dart';
import 'package:speak_logic_poll/routes/app_routes.dart';
import 'package:speak_logic_poll/utils/colors.dart';
import 'package:speak_logic_poll/views/auth/signup/signup_controller.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: GetBuilder<SignupController>(
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
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 30, 0, 30),
                            child: Center(
                                child: SvgPicture.asset(
                              'assets/images/logo.svg',
                              height: MediaQuery.of(context).size.height * 0.16,
                            )),
                          ),
                          Flexible(
                            child: Container(
                                padding: EdgeInsets.only(left: 20, right: 20),
                                height:
                                    MediaQuery.of(context).size.height * 0.72,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    color: white,
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(25),
                                        topLeft: Radius.circular(25))),
                                child: SingleChildScrollView(
                                  child: Column(children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 30, bottom: 20),
                                      child: Text(
                                        'Register',
                                        style: TextStyle(
                                            fontSize: 24,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          bottom: 4, top: 4),
                                      child: InputField(
                                        hint: 'Username',
                                        controller: controller.userController,
                                        // validator: (user) =>
                                        //     Validators.emptyStringValidator(
                                        //         user, 'email'),
                                        type: TextInputType.emailAddress,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          bottom: 4, top: 4),
                                      child: InputField(
                                        hint: 'Email Address',
                                        controller: controller.emailController,
                                        // validator: (user) =>
                                        //     Validators.emptyStringValidator(
                                        //         user, 'email'),
                                        type: TextInputType.emailAddress,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(bottom: 4),
                                      child: InputField(
                                        hint: 'Phone Number',
                                        controller: controller.phoneController,
                                        // validator: (user) =>
                                        //     Validators.emptyStringValidator(
                                        //         user, 'Number'),
                                        type: TextInputType.number,
                                      ),
                                    ),
                                    PasswordInputField(
                                      hint: 'Password',
                                      obscure: controller.obscureTextPassword,
                                      controller: controller.passwordController,
                                      toggle: controller.toggle,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 4, bottom: 20),
                                      child: PasswordInputField(
                                        toggle: controller.toggle1,
                                        hint: 'Confirm Password',
                                        obscure:
                                            controller.obscureTextcPassword,
                                        controller:
                                            controller.cpasswordController,
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
              title: 'Sign Up',
              color1: white,
              color: pinkColor,
              onPressed: () {
                Get.toNamed(AppRoutes.home);
              },
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              padding: EdgeInsets.only(bottom: 20),
              width: MediaQuery.of(context).size.width * 0.9,
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Already have an account?  ',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: grey),
                      recognizer: TapGestureRecognizer()..onTap = () {},
                    ),
                    TextSpan(
                      text: 'Sign In',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: maincolor),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Get.toNamed(AppRoutes.signin);
                        },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

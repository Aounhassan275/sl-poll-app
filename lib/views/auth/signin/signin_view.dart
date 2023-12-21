// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:speak_logic_poll/components/button.dart';
import 'package:speak_logic_poll/components/icon_inputfield.dart';
import 'package:speak_logic_poll/components/icon_password_inputfield.dart';
import 'package:speak_logic_poll/routes/app_routes.dart';
import 'package:speak_logic_poll/utils/colors.dart';
import 'package:speak_logic_poll/utils/fontWeight.dart';
import 'package:speak_logic_poll/views/auth/signin/signin_controller.dart';
import 'package:speak_logic_poll/views/createpoll/home/home_screen/wellcome_home_view.dart';

class SignInView extends StatefulWidget {
  const SignInView({super.key});

  @override
  State<SignInView> createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: GetBuilder<SigninController>(
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
                              'assets/images/loginLogo.svg',
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
                                        'Sign into you account',
                                        style: TextStyle(
                                            fontSize: 24,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          bottom: 4, top: 4),
                                      child: IconInputField(
                                        img: 'assets/images/user.svg',
                                        hint: 'Email Address',
                                        controller: controller.emailController,
                                        // validator: (user) =>
                                        //     Validators.emptyStringValidator(
                                        //         user, 'email'),
                                        type: TextInputType.emailAddress,
                                      ),
                                    ),
                                    PasswordIconInputField(
                                      img: 'assets/images/lock.svg',
                                      hint: 'Password',
                                      obscure: controller.obscureTextPassword,
                                      controller: controller.passwordController,
                                      toggle: controller.toggle,
                                    ),
                                    SizedBox(height: 12),
                                    GestureDetector(
                                      onTap: () {
                                        Get.toNamed(AppRoutes.forgot);
                                      },
                                      child: Align(
                                        alignment: Alignment.centerRight,
                                        child: Text(
                                          "Forgot password?",
                                          style: const TextStyle(
                                            fontSize: 15,
                                            fontWeight: w600,
                                            color: maincolor,
                                          ),
                                        ),
                                      ),
                                    )
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
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => WellcomeHomeView()),
              );
            },
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.only(
                  right: 15, left: 15, top: 10, bottom: 20),
              child: MainButton(
                title: 'Login',
                color: pinkColor,
                color1: white,
              ),
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
                      text: 'If you continue, you are accepting\n ',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: grey),
                      recognizer: TapGestureRecognizer()..onTap = () {},
                    ),
                    TextSpan(
                      text: 'the Terms , Conditions and Policy',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: maincolor),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          // Get.toNamed(AppRoutes.signup);
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

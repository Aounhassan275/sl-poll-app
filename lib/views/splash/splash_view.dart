import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:speak_logic_poll/components/button.dart';
import 'package:speak_logic_poll/components/icon_inputfield.dart';
import 'package:speak_logic_poll/components/icon_password_inputfield.dart';
import 'package:speak_logic_poll/components/inputfield.dart';
import 'package:speak_logic_poll/components/password_inputfield.dart';
import 'package:speak_logic_poll/utils/colors.dart';
import 'package:speak_logic_poll/views/splash/splash_controller.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<InvitationsController>(
      builder: (controller) => Scaffold(
        backgroundColor: white,
        body: SafeArea(
          child: Column(
            children: [
              MainButton(title: 'Login', onPressed: () {}),
              InputField(
                controller: controller.emailController,
                hint: 'Email',
                type: TextInputType.emailAddress,
              ),
              PasswordInputField(
                controller: controller.passwordController,
                hint: 'Password',
                obscure: controller.obscureTextPassword,
                toggle: controller.toggle,
              ),
              IconInputField(
                controller: controller.emailController,
                hint: 'Email',
                type: TextInputType.emailAddress,
                img: 'assets/images/user.svg',
              ),
              PasswordIconInputField(
                hint: 'Password',
                controller: controller.passwordController,
                img: 'assets/images/lock.svg',
                obscure: controller.obscureTextPassword,
                toggle: controller.toggle,
              )
            ],
          ),
        ),
      ),
    );
  }
}

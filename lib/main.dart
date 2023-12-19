// ignore_for_file: prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:speak_logic_poll/routes/app_pages.dart';
import 'package:speak_logic_poll/utils/colors.dart';
import 'package:speak_logic_poll/themes/themes.dart';
import 'package:speak_logic_poll/views/Invitations/Send_Receive_Invitation/Send_Receive_Invitation_Binding.dart';
import 'package:speak_logic_poll/views/Invitations/Send_Receive_Invitation/Send_Receive_Invitation_View.dart';
import 'package:speak_logic_poll/views/auth/forgot/forgot_binding.dart';
import 'package:speak_logic_poll/views/auth/forgot/forgot_view.dart';
import 'package:speak_logic_poll/views/auth/polls/polls_view.dart';
import 'package:speak_logic_poll/views/auth/polls/polls_view_browse.dart';
import 'package:speak_logic_poll/views/auth/results/results_view.dart';

//import 'package:speak_logic_poll/views/auth/resultscreen/result_screen_view.dart';

import 'package:speak_logic_poll/views/auth/signin/signin_binding.dart';
import 'package:speak_logic_poll/views/auth/signin/signin_view.dart';
import 'package:speak_logic_poll/views/auth/signup/signup_binding.dart';
import 'package:speak_logic_poll/views/auth/signup/signup_view.dart';
import 'package:speak_logic_poll/views/auth/verification/verification_binding.dart';
import 'package:speak_logic_poll/views/auth/verification/verification_view.dart';
import 'package:speak_logic_poll/views/home/home_screen_binding.dart';
import 'package:speak_logic_poll/views/home/home_screen_view.dart';
import 'package:speak_logic_poll/views/splash/splash_binding.dart';
import 'package:speak_logic_poll/views/splash/splash_view.dart';
import 'package:speak_logic_poll/views/success/success_view.dart';
import 'package:toggle_switch/toggle_switch.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );
  // await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: Styles.lightTheme,
      debugShowCheckedModeBanner: false,
      title: "Fl Speak Logic Poll",
      initialBinding: HomeScreenBinding(),
      home: HomeScreenView(),
      getPages: AppPages.pages,
    );
  }
}

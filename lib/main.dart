// ignore_for_file: prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:speak_logic_poll/components/topcontainer.dart';
import 'package:speak_logic_poll/routes/app_pages.dart';
import 'package:speak_logic_poll/utils/colors.dart';
import 'package:speak_logic_poll/themes/themes.dart';
import 'package:speak_logic_poll/views/Bottom_Navbar/Bottom_Navbar.dart';
import 'package:speak_logic_poll/views/auth/forgot/forgot_binding.dart';
import 'package:speak_logic_poll/views/auth/forgot/forgot_view.dart';
import 'package:speak_logic_poll/views/auth/polls/polls_view.dart';
import 'package:speak_logic_poll/views/auth/polls/polls_view_browse.dart';
import 'package:speak_logic_poll/views/auth/results/results_view.dart';
import 'package:speak_logic_poll/views/auth/signin/signin_binding.dart';
import 'package:speak_logic_poll/views/auth/signin/signin_view.dart';
import 'package:speak_logic_poll/views/auth/signup/signup_binding.dart';
import 'package:speak_logic_poll/views/auth/signup/signup_view.dart';
import 'package:speak_logic_poll/views/auth/verification/verification_binding.dart';
import 'package:speak_logic_poll/views/auth/verification/verification_view.dart';
import 'package:speak_logic_poll/views/home/Home_Screens/home_screen_binding.dart';
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
      initialBinding: SignupBinding(),
      // home: SignUpView(),
      home:   Topcontainer(
            //   screenName: 'false',
            //   showimg2second: true,
            //   showimg6: true,
            //   showimg7: true,
            //   showimg3second: true,
            //   showimg6second: true,
            //   showimg5second: true,
              img1: 'assets/images/listfilter.svg',
              img2: 'assets/images/server_blue.svg',
              img3: 'assets/images/maximize _blue_dark.svg',
              img4: 'assets/images/search.svg',
              img5: 'assets/images/Searchs.svg',
              img6: 'assets/images/menublue.svg',
              img7: 'assets/images/grid.svg',
            //   img5second:'assets/images/Searchwhite.svg',
            //   img2second: 'assets/images/serverblue.svg',
            //   img3second: 'assets/images/maximizeblue.svg',
            //   img6second:'assets/images/menublue.svg',
              
              
             ),
      getPages: AppPages.pages,
    );
  }
}

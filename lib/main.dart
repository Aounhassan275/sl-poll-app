import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:speak_logic_poll/routes/app_pages.dart';
import 'package:speak_logic_poll/themes/themes.dart';
import 'package:speak_logic_poll/views/auth/signup/signup_binding.dart';
import 'package:speak_logic_poll/views/auth/signup/signup_view.dart';

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
      home: SignUpView(),
      getPages: AppPages.pages,
    );
  }
}

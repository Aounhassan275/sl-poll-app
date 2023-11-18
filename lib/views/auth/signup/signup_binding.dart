import 'package:get/get.dart';
import 'package:speak_logic_poll/views/auth/signup/signup_controller.dart';

class SignupBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignupController());
  }
}

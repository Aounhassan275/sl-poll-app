import 'package:get/get.dart';
import 'package:speak_logic_poll/views/auth/forgot/forgot_controller.dart';

class ForgotBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ForgotController());
  }
}

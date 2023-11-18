import 'package:get/get.dart';
import 'package:speak_logic_poll/views/auth/verification/verification_controller.dart';

class VerificationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VerificationController());
  }
}

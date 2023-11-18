import 'package:get/get.dart';
import 'package:speak_logic_poll/views/auth/reset/reset_controller.dart';

class ResetBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ResetController());
  }
}

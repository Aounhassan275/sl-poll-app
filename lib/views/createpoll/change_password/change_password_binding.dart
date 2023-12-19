import 'package:get/get.dart';
import 'package:speak_logic_poll/views/createpoll/change_password/change_password_controller.dart';

class ChangePasswordBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChangePasswordController());
  }
}

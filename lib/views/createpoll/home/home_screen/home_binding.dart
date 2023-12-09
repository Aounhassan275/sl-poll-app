import 'package:get/get.dart';
import 'package:speak_logic_poll/views/createpoll/profile/profile_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
  }
}

import 'package:get/get.dart';
import 'package:speak_logic_poll/views/createpoll/home/home_screen/home_controller.dart';

class HelpBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
  }
}
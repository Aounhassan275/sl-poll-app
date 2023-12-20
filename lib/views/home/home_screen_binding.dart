import 'package:get/get.dart';
import 'package:speak_logic_poll/views/home/home_screen_controller.dart';

class HomeScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeScreenController());
  }
}

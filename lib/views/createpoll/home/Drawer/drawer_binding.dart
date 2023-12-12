import 'package:get/get.dart';
import 'package:speak_logic_poll/views/createpoll/read_mode1/read_mode_controller1.dart';

class DrawerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DrawerController());
  }
}

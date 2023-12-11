import 'package:get/get.dart';
import 'package:speak_logic_poll/views/createpoll/read_mode2/read_mode_controller2.dart';

class ReadModeBinding2 extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ReadModeController2());
  }
}

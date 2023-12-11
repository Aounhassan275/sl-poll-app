import 'package:get/get.dart';
import 'package:speak_logic_poll/views/createpoll/read_mode8/read_mode_controller8.dart';

class ReadModeBinding8 extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ReadModeController8());
  }
}

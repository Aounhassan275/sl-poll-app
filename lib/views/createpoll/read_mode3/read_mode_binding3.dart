import 'package:get/get.dart';

import 'package:speak_logic_poll/views/createpoll/read_mode3/read_mode_controller3.dart';

class ReadModeBinding3 extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ReadModeController3());
  }
}

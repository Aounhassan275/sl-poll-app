import 'package:get/get.dart';
import 'package:speak_logic_poll/views/createpoll/read_mode4/read_mode_controller4.dart';

class ReadModeBinding4 extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ReadModeController4());
  }
}

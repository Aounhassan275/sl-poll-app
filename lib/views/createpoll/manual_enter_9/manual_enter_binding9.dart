import 'package:get/get.dart';
import 'package:speak_logic_poll/views/createpoll/manual_enter_9/manual_enter_controller9.dart';

class ManualEnterBinding9 extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ManualEnterController9());
  }
}

import 'package:get/get.dart';
import 'package:speak_logic_poll/views/createpoll/manual_enter_8/manual_enter_controller8.dart';

class ManualEnterBinding8 extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ManualEnterController8());
  }
}

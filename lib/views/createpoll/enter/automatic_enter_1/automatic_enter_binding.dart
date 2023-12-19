import 'package:get/get.dart';
import 'package:speak_logic_poll/views/createpoll/enter/automatic_enter_1/automatic_enter_controller2.dart';

class AutomaticEnterBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AutomaticEnterController());
  }
}

import 'package:get/get.dart';
import 'package:speak_logic_poll/views/createpoll/enter/automatic_enter/automatic_enter_controller.dart';

class AutomaticEnterBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AutomaticEnterController());
  }
}

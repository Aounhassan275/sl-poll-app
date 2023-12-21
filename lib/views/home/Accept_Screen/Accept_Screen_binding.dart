import 'package:get/get.dart';
import 'package:speak_logic_poll/views/home/Accept_Screen/Accept_Screen_controller.dart';

class AcceptScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AcceptScreenController());
  }
}

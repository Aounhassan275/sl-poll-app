import 'package:get/get.dart';
import 'package:speak_logic_poll/views/createpoll/profile/profile_controller.dart';

class WellcomeHomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WellcomeHomeController());
  }
}

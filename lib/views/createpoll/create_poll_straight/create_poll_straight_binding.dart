import 'package:get/get.dart';
import 'package:speak_logic_poll/views/createpoll/home/home_screen/wellcome_home_controller.dart';

class CreatePollStraightBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WellcomeHomeController());
  }
}

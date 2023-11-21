import 'package:get/get.dart';
import 'package:speak_logic_poll/views/createpoll/wellcome/wellcome_controller.dart';

class WellComeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProfileController());
  }
}

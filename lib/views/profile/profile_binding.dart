import 'package:get/get.dart';
import 'package:speak_logic_poll/views/createpoll/wellcome/wellcome_controller.dart';

class ProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProfileController());
  }
}

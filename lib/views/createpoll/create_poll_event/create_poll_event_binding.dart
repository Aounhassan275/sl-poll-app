import 'package:get/get.dart';
import 'package:speak_logic_poll/views/createpoll/create_poll_event/create_poll_event_controller.dart';

class CreatePollEventBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CreatePollEventController());
  }
}

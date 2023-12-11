import 'package:get/get.dart';
import 'package:speak_logic_poll/views/createpoll/poll_entity_question/poll_entity_question_controller.dart';

class PollEntityQuestionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PollEntityQuestionController());
  }
}

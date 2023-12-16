import 'package:get/get.dart';
import 'package:speak_logic_poll/views/Invitations/Send_Receive_Invitation/Send_Receive_Invitation_Controller.dart';

class SendReceiveInvitationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SendReceiveInvitationController());
  }
}

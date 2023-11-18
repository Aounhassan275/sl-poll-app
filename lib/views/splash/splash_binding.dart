import 'package:get/get.dart';
import 'package:speak_logic_poll/views/splash/splash_controller.dart';

class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SplashController());
  }
}

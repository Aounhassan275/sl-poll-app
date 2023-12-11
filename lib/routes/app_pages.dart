import 'package:get/get.dart';
import 'package:speak_logic_poll/routes/app_routes.dart';
import 'package:speak_logic_poll/views/auth/forgot/forgot_binding.dart';
import 'package:speak_logic_poll/views/auth/forgot/forgot_view.dart';
import 'package:speak_logic_poll/views/auth/reset/reset_binding.dart';
import 'package:speak_logic_poll/views/auth/reset/reset_view.dart';
import 'package:speak_logic_poll/views/auth/signin/signin_binding.dart';
import 'package:speak_logic_poll/views/auth/signin/signin_view.dart';
import 'package:speak_logic_poll/views/auth/signup/signup_binding.dart';
import 'package:speak_logic_poll/views/auth/signup/signup_view.dart';
import 'package:speak_logic_poll/views/auth/verification/verification_binding.dart';
import 'package:speak_logic_poll/views/auth/verification/verification_view.dart';
import 'package:speak_logic_poll/views/createpoll/change_password.dart/change_password_view.dart';
import 'package:speak_logic_poll/views/createpoll/create_poll.dart/create_poll_view.dart';
import 'package:speak_logic_poll/views/createpoll/help/help_view.dart';
import 'package:speak_logic_poll/views/createpoll/manual_enter_1.dart/manual_enter_view1.dart';
import 'package:speak_logic_poll/views/createpoll/manual_enter_4.dart/manual_enter_view4.dart';
import 'package:speak_logic_poll/views/createpoll/manual_enter_2.dart%20c/manual_enter_view2.dart';
import 'package:speak_logic_poll/views/createpoll/manual_enter_6.dart%20c/manual_enter_view6.dart';
import 'package:speak_logic_poll/views/createpoll/manual_enter_7.dart%20copy/manual_enter_view7.dart';
import 'package:speak_logic_poll/views/createpoll/manual_enter_8.dart%20copy%202/manual_enter_view8.dart';
import 'package:speak_logic_poll/views/createpoll/manual_enter_9.dart%20copy%202/manual_enter_view9.dart';
import 'package:speak_logic_poll/views/createpoll/poll_entity_question/poll_entity_question_view.dart';
import 'package:speak_logic_poll/views/createpoll/read_mode1/read_mode_view1.dart';
import 'package:speak_logic_poll/views/createpoll/profile/profile_view.dart';
import 'package:speak_logic_poll/views/createpoll/read_mode10/read_mode_view10.dart';
import 'package:speak_logic_poll/views/createpoll/read_mode11/read_mode_view11.dart';
import 'package:speak_logic_poll/views/createpoll/read_mode12/read_mode_view12.dart';
import 'package:speak_logic_poll/views/createpoll/read_mode13/read_mode_view13.dart';
import 'package:speak_logic_poll/views/createpoll/read_mode2/read_mode_view2.dart';
import 'package:speak_logic_poll/views/createpoll/read_mode3/read_mode_view3.dart';
import 'package:speak_logic_poll/views/createpoll/read_mode4/read_mode_view4.dart';
import 'package:speak_logic_poll/views/createpoll/read_mode5/read_mode_view5.dart';
import 'package:speak_logic_poll/views/createpoll/read_mode6/read_mode_view6.dart';
import 'package:speak_logic_poll/views/createpoll/read_mode7/read_mode_view7.dart';
import 'package:speak_logic_poll/views/createpoll/read_mode8/read_mode_view8.dart';
import 'package:speak_logic_poll/views/createpoll/read_mode9/read_mode_view9.dart';
import 'package:speak_logic_poll/views/createpoll/home/home_screen/Drawer/drawer_view.dart';
import 'package:speak_logic_poll/views/splash/splash_binding.dart';
import 'package:speak_logic_poll/views/splash/splash_view.dart';
import 'package:speak_logic_poll/views/success/success_view.dart';

import '../views/createpoll/home/home_screen/home_view.dart';

class AppPages {
  static final List<GetPage> pages = [
    GetPage(
      name: AppRoutes.splash,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: AppRoutes.signin,
      page: () => const SignInView(),
      binding: SigninBinding(),
    ),
    GetPage(
      name: AppRoutes.signup,
      page: () => const SignUpView(),
      binding: SignupBinding(),
    ),
    GetPage(
      name: AppRoutes.forgot,
      page: () => const ForgotView(),
      binding: ForgotBinding(),
    ),
    GetPage(
      name: AppRoutes.verification,
      page: () => const VerificationView(),
      binding: VerificationBinding(),
    ),
    GetPage(
      name: AppRoutes.reset,
      page: () => const ResetView(),
      binding: ResetBinding(),
    ),
    GetPage(
      name: AppRoutes.success,
      page: () => const SuccessView(),
      // binding: ResetBinding(),
    ),
    GetPage(
      name: AppRoutes.home,
      page: () => const HomeView(),
      // binding: WellComeBinding(),
    ),
    GetPage(
      name: AppRoutes.drawer,
      page: () => const DrawerScreenView(),
      // binding: DrawerBinding(),
    ),
    GetPage(
      name: AppRoutes.profile,
      page: () => const ProfileView(),
      // binding: ProfileBinding(),
    ),
    GetPage(
      name: AppRoutes.help,
      page: () => const HelpView(),
      // binding: HelpBinding(),
    ),
    GetPage(
      name: AppRoutes.password,
      page: () => const ChangePasswordView(),
      // binding: ChangePasswordBinding(),
    ),
    GetPage(
      name: AppRoutes.createpoll,
      page: () => CreatePollStraightView(),
      // binding: ChangePasswordBinding(),
    ),
    GetPage(
      name: AppRoutes.pollentity,
      page: () => PollEntityQuestionView(),
      // binding: PollEntityQuestionBinding(),
    ),
    GetPage(
      name: AppRoutes.manualenter1,
      page: () => ManualEnterView(),
      // binding: ManualEnterBinding1(),
    ),
    GetPage(
      name: AppRoutes.manualenter4,
      page: () => ManualEnterView4(),
      // binding: ManualEnterBinding4(),
    ),
    GetPage(
      name: AppRoutes.manualenter2,
      page: () => ManualEnterView2(),
      // binding: ManualEnterBinding2(),
    ),
    GetPage(
      name: AppRoutes.manualenter6,
      page: () => ManualEnterView6(),
      // binding: ManualEnterBinding6(),
    ),
    GetPage(
      name: AppRoutes.manualenter7,
      page: () => ManualEnterView7(),
      // binding: ManualEnterBinding7(),
    ),
    GetPage(
      name: AppRoutes.manualenter8,
      page: () => ManualEnterView8(),
      // binding: ManualEnterBinding8(),
    ),
    GetPage(
      name: AppRoutes.manualenter9,
      page: () => ManualEnterView9(),
      // binding: ManualEnterBinding9(),
    ),
    GetPage(
      name: AppRoutes.readmode1,
      page: () => ReadModeView1(),
      // binding: ReadModeBinding1(),
    ),
    GetPage(
      name: AppRoutes.readmode2,
      page: () => ReadModeView2(),
      // binding: ReadModeBinding2(),
    ),
    GetPage(
      name: AppRoutes.readmode3,
      page: () => ReadModeView3(),
      // binding: ReadModeBinding3(),
    ),
    GetPage(
      name: AppRoutes.readmode4,
      page: () => ReadModeView4(),
      // binding: ReadModeBinding4(),
    ),
    GetPage(
      name: AppRoutes.readmode5,
      page: () => ReadModeView5(),
      // binding: ReadModeBinding5(),
    ),
    GetPage(
      name: AppRoutes.readmode6,
      page: () => ReadModeView6(),
      // binding: ReadModeBinding6(),
    ),
    GetPage(
      name: AppRoutes.readmode7,
      page: () => ReadModeView7(),
      // binding: ReadModeBinding7(),
    ),
    GetPage(
      name: AppRoutes.readmode8,
      page: () => ReadModeView8(),
      // binding: ReadModeBinding8(),
    ),
    GetPage(
      name: AppRoutes.readmode9,
      page: () => ReadModeView9(),
      // binding: ReadModeBinding9(),
    ),
    GetPage(
      name: AppRoutes.readmode10,
      page: () => ReadModeView10(),
      // binding: ReadModeBinding10(),
    ),
    GetPage(
      name: AppRoutes.readmode11,
      page: () => ReadModeView11(),
      // binding: ReadModeBinding11(),
    ),
    GetPage(
      name: AppRoutes.readmode12,
      page: () => ReadModeView12(),
      // binding: ReadModeBinding12(),
    ),
    GetPage(
      name: AppRoutes.readmode13,
      page: () => ReadModeView13(),
      // binding: ReadModeBinding13(),
    ),
  ];
}

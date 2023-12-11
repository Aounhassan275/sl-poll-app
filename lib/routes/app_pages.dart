import 'package:get/get.dart';
import 'package:speak_logic_poll/routes/app_routes.dart';
import 'package:speak_logic_poll/views/auth/forgot/forgot_binding.dart';
import 'package:speak_logic_poll/views/auth/forgot/forgot_view.dart';
import 'package:speak_logic_poll/views/auth/polls/polls_view.dart';
import 'package:speak_logic_poll/views/auth/polls/polls_view_browse.dart';
import 'package:speak_logic_poll/views/auth/reset/reset_binding.dart';
import 'package:speak_logic_poll/views/auth/reset/reset_view.dart';
import 'package:speak_logic_poll/views/auth/results/results_view.dart';
import 'package:speak_logic_poll/views/auth/signin/signin_binding.dart';
import 'package:speak_logic_poll/views/auth/signin/signin_view.dart';
import 'package:speak_logic_poll/views/auth/signup/signup_binding.dart';
import 'package:speak_logic_poll/views/auth/signup/signup_view.dart';
import 'package:speak_logic_poll/views/auth/verification/verification_binding.dart';
import 'package:speak_logic_poll/views/auth/verification/verification_view.dart';
import 'package:speak_logic_poll/views/splash/splash_binding.dart';
import 'package:speak_logic_poll/views/splash/splash_view.dart';
import 'package:speak_logic_poll/views/success/success_view.dart';

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
      name: AppRoutes.resultscreen,
      page: () => const ResultsView(),
      // binding: ResetBinding(),
    ),
     GetPage(
      name: AppRoutes.pollscreen,
      page: () => const PollsView(),
      // binding: ResetBinding(),
    ),
    GetPage(
      name: AppRoutes.pollscreenbrowse,
      page: () => const PollsViewBrowse(),
      // binding: ResetBinding(),
    ),
  ];
}

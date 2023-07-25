import 'package:go_router/go_router.dart';
import 'package:labor/features/layout/layout.dart';
import 'package:labor/features/splash/presentation/splash_screen.dart';

import '../../features/home_screen/presentation/view/home_screen.dart';
import '../../features/login/features/view/login_screen.dart';
import '../../features/login/features/view/register_screen.dart';
import '../../features/onBoarding/presentation/view/on_boarding_screen_2.dart';
import '../../features/onBoarding/presentation/view/onboarding_screen.dart';
import '../../features/reset_password/features/views/forget_password.dart';
import '../../features/reset_password/features/views/otp.dart';
import '../../features/reset_password/features/views/reset_password_screen.dart';

abstract class AppRouter {
  static const kOnBoardingScreen = '/OnBoardingScreen';
  static const kOnBoardingScreen2 = '/OnBoardingScreen2';
  static const kLoginScreen = '/LoginScreen';
  static const kForgetPassword = '/ForgetPasswordScreen';
  static const kOtp = '/Otp';
  static const kRestPasswordScreen = '/RestPasswordScreen';
  static const kRegisterScreen = '/RegisterScreen';
  static const kHomeScreen = '/HomeScreen';
  static const kLayoutScreen = '/LayoutScreen';


  static final router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
      path: kHomeScreen,
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: kOnBoardingScreen,
      builder: (context, state) => const OnBoardingScreen(),
    ),
    GoRoute(
      path: kOnBoardingScreen2,
      builder: (context, state) => const OnBoardingScreen2(),
    ),
    GoRoute(
      path: kLoginScreen,
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: kRegisterScreen,
      builder: (context, state) => const RegisterScreen(),
    ),
    GoRoute(
      path: kForgetPassword,
      builder: (context, state) => const ForgetPasswordScreen(),
    ),
    GoRoute(
      path: kOtp,
      builder: (context, state) => const Otp(),
    ),
    GoRoute(
      path: kRestPasswordScreen,
      builder: (context, state) => const RestPasswordScreen(),
    ),
    GoRoute(
      path: kLayoutScreen,
      builder: (context, state) => const LayoutScreen(),
    ),

  ]);
}

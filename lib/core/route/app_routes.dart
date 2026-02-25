import 'package:get/get.dart';

import '../../presentation/auth/login_screen/binding/login_binding.dart';
import '../../presentation/auth/login_screen/login_screen.dart';
import '../../presentation/splash/binding/binding.dart';
import '../../presentation/splash/splash_view.dart';

class AppRoutes {
  static const splashScreen = '/splash';
  static const loginScreen = '/login';
}

class AppPages {
  static final routes = [
    GetPage(
      name: AppRoutes.splashScreen,
      binding: SplashBinding(),
      page: () => const SplashView(),
    ),
    GetPage(
      name: AppRoutes.loginScreen,
      binding: LoginBinding(),
      page: () => const LoginScreen(),
    ),
  ];
}

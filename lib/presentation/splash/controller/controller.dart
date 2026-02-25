import 'dart:async';

import 'package:get/get.dart';
import '../../../core/route/app_routes.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    _startTimer();
  }

  void _startTimer() {
    Timer(const Duration(seconds: 3), () {
      _checkLogin();
    });
  }

  void _checkLogin() {
    bool isLogin = false;

    if (isLogin) {
      // Get.offAllNamed(AppRoutes.home);
    } else {
      Get.offAllNamed(AppRoutes.loginScreen);
    }
  }
}

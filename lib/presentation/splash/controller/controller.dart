import 'dart:async';

import 'package:e_commerce_app/core/constant/parameters.dart';
import 'package:e_commerce_app/core/route/app_routes.dart';
import 'package:e_commerce_app/data/shared_pref.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    _startTimer();
  }

  void _startTimer() {
    Timer(const Duration(seconds: 3), () {
      checkLogin();
    });
  }

  Future<void> checkLogin() async {
    final token = await SharedPref.getStringPref(param.TOKEN);

    if (token != null && token.isNotEmpty) {
      Get.offAll(AppRoutes.mainScreen);
    } else {
      Get.offAll(AppRoutes.mainScreen);
    }
  }
}

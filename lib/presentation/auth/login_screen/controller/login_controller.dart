import 'package:e_commerce_app/core/constant/parameters.dart';
import 'package:e_commerce_app/data/api_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../../core/common_custom/widget/custom_snackbar.dart';
import '../../../../core/endpoints/endpoints.dart';
import '../../../../data/shared_pref.dart';
import '../model/login_model.dart';

class loginController extends GetxController {
  var isLoading = false.obs;
  ApiService api = ApiService();
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  loginService() async {
    try {
      isLoading.value = true;
      final response = await api.post(endpoint: endpoints.LOGIN_URL, data: {
        'username': usernameController.text.trim(),
        'password': passwordController.text.trim(),
      });

      if (response.statusCode == 200 || response.statusCode == 201) {
        var res = authResponse.fromJson(response.b);
        await SharedPref.setStringPref(param.TOKEN, response.data['token']);
        AppSnackbarWidget(
          message: 'login successfully',
          type: SnackType.success,
        );

        isLoading.value = false;
      } else {
        isLoading.value = false;
        AppSnackbarWidget(
          message: 'Something Wrong',
          type: SnackType.error,
        );
      }
    } catch (e) {
      isLoading.value = false;
    }
  }
}

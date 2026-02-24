import 'package:e_commerce_app/data/api_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../../core/endpoints/endpoints.dart';

class loginController extends GetxController {
  var isLoading = false.obs;
  ApiService api = ApiService();

  Future<void> loinService() async {
    try {
      isLoading.value = true;
      final response = await api.post(endpoint: endpoints.LOGIN_URL, data: {
        'username': 'abc',
        'password': '123',
      });

      if (response.statusCode == 200 || response.statusCode == 201) {
        GetSnackBar(
          titleText: Text('Successfull'),
          messageText: Text('login successfull'),
          snackPosition: SnackPosition.BOTTOM,
        );
        isLoading.value = false;
      } else {
        isLoading.value = false;
      }
    } catch (e) {
      isLoading.value = false;
    }
  }
}

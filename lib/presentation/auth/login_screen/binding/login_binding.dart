import 'package:get/get.dart';

import '../controller/login_controller.dart';

class loginBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<loginController>(() => loginController());
  }
}

import 'package:get/get.dart';

import '../controller/controller.dart';

class ProfileBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<ProfileController>(() => ProfileController());
  }
}

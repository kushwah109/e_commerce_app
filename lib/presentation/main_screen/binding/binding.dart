import 'package:get/get.dart';

import '../controller/controller.dart';

class MainBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<NavController>(() => NavController());
  }
}

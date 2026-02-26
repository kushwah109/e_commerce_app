import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../../product_view/model/all_product_model.dart';

class ProductDetailsController extends GetxController {
  late Products product;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    product = Get.arguments as Products;
  }
}

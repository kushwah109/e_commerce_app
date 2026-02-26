import 'package:e_commerce_app/presentation/product/product_details/controller/controller.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';

class ProductDetailsBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<ProductDetailsController>(() => ProductDetailsController());
  }
}

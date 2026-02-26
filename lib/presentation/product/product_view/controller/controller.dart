import 'package:e_commerce_app/core/endpoints/endpoints.dart';
import 'package:e_commerce_app/data/api_service.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../model/all_product_model.dart';

class ProductController extends GetxController {
  var isLoading = false.obs;
  RxList<Products> productList = <Products>[].obs;

  ApiService api = ApiService();
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    fetchProducts();
  }

  Future<void> fetchProducts() async {
    try {
      isLoading.value = true;

      final response = await api.get(endpoint: endpoints.PRODUCT_URL);

      if (response.statusCode == 200) {
        final List data = response.data['products'];

        productList.value = data.map((e) => Products.fromJson(e)).toList();
      }
    } catch (e) {
      print("Product Error: $e");
    } finally {
      isLoading.value = false;
    }
  }
}

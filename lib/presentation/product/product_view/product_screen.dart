import 'package:e_commerce_app/core/route/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/common_custom/widget/custom_app_bar.dart';
import '../../../core/common_custom/widget/custom_gridview.dart';
import 'controller/controller.dart';
import 'model/all_product_model.dart';

class ProductPage extends GetView<ProductController> {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "Product",
        showBack: true,
      ),
      body: Obx(() {
        if (controller.isLoading.value) {
          return const Center(child: CircularProgressIndicator());
        }

        return AppGridView<Products>(
          items: controller.productList.value,
          onTap: (product) => Get.toNamed(AppRoutes.productDetailScreen,
              arguments: {'product': product}),
        );
      }),
    );
  }
}

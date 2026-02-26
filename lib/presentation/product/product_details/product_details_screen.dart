import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/common_custom/widget/custom_app_bar.dart';
import '../../../core/common_custom/widget/custom_details_page.dart';
import '../product_view/model/all_product_model.dart';
import 'controller/controller.dart';

class ProductDetailsPage extends GetView<ProductDetailsController> {
  ProductDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: controller.product.title ?? '',
        showBack: true,
      ),
      body: ProductDetailsWidget(
        product: controller.product,
        onAddToCart: () {},
      ),
    );
  }
}

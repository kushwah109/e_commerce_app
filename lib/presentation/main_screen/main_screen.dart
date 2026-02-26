import 'package:e_commerce_app/core/route/app_routes.dart';
import 'package:e_commerce_app/presentation/cart/cart_screen.dart';
import 'package:e_commerce_app/presentation/product/product_view/model/all_product_model.dart';
import 'package:e_commerce_app/presentation/product/product_view/product_screen.dart';
import 'package:e_commerce_app/presentation/profile/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/common_custom/widget/custom_bottom_Bar.dart';
import '../home/home_screen.dart';
import 'controller/controller.dart';

class MainScreen extends GetView<NavController> {
  MainScreen({super.key});

  final List<Widget> pages = [
    HomeScreen(),
    ProductPage(),
    CartScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
          body: IndexedStack(
            index: controller.currentIndex.value,
            children: pages,
          ),
          bottomNavigationBar: CustomBottomBar(),
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../core/common_custom/widget/custom_app_bar.dart';
import '../../core/common_custom/widget/custom_gridview.dart';
import '../product/product_view/controller/controller.dart';

class HomeScreen extends GetView<ProductController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "E-Commerce",
        showSearch: true,
        onSearchTap: () {},
        showNotification: true,
        onNotificationTap: () {},
      ),
      body: Obx(
        () {
          if (controller.isLoading.value) {
            return const Center(child: CircularProgressIndicator());
          }

          return RefreshIndicator(
            onRefresh: controller.fetchProducts,
            child: SingleChildScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    /// 🔥 Banner Section
                    _bannerSection(),

                    const SizedBox(height: 20),

                    /// 🗂 Categories
                    _sectionTitle("Categories"),
                    const SizedBox(height: 10),
                    _categorySection(),

                    const SizedBox(height: 20),

                    /// 🛍 Featured Products
                    _sectionTitle("Featured Products"),
                    const SizedBox(height: 10),

                    SizedBox(
                      height: 400,
                      child: AppGridView(
                        items: controller.productList,
                        onTap: (product) {
                          Get.toNamed(
                            "/productDetail",
                            arguments: product,
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  /// Section Title
  Widget _sectionTitle(String title) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  /// Banner
  Widget _bannerSection() {
    return SizedBox(
      height: 160,
      child: PageView(
        children: [
          _bannerCard("https://via.placeholder.com/400x150"),
          _bannerCard("https://via.placeholder.com/400x150"),
          _bannerCard("https://via.placeholder.com/400x150"),
        ],
      ),
    );
  }

  Widget _bannerCard(String image) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        image: DecorationImage(
          image: NetworkImage(image),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  /// Category Horizontal List
  Widget _categorySection() {
    final categories = [
      "Electronics",
      "Fashion",
      "Shoes",
      "Mobiles",
      "Beauty",
    ];

    return SizedBox(
      height: 80,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        separatorBuilder: (_, __) => const SizedBox(width: 10),
        itemBuilder: (context, index) {
          return Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.grey.shade200,
            ),
            child: Text(categories[index]),
          );
        },
      ),
    );
  }
}

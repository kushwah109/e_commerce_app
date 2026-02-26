import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../presentation/main_screen/controller/controller.dart';

class CustomBottomBar extends StatelessWidget {
  CustomBottomBar({super.key});

  final NavController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [BoxShadow(blurRadius: 10, color: Colors.black12)],
      ),
      child: Row(
        children: [
          navItem(icon: Icons.home, label: "Home", index: 0),
          navItem(icon: Icons.shopping_bag, label: "Products", index: 1),
          navItem(icon: Icons.shopping_cart, label: "Cart", index: 2),
          navItem(icon: Icons.person, label: "Profile", index: 3),
        ],
      ),
    );
  }

  Widget navItem({
    required IconData icon,
    required String label,
    required int index,
  }) {
    return Expanded(
      child: GestureDetector(
        onTap: () => controller.changeIndex(index),
        child: Obx(() {
          final isSelected = controller.currentIndex.value == index;

          return Container(
            padding: const EdgeInsets.symmetric(vertical: 10),
            decoration: BoxDecoration(
              color: isSelected ? Colors.black : Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            margin: const EdgeInsets.symmetric(horizontal: 6, vertical: 8),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(icon, color: isSelected ? Colors.white : Colors.grey),
                Text(label,
                    style: TextStyle(
                        color: isSelected ? Colors.white : Colors.grey,
                        fontSize: 12)),
              ],
            ),
          );
        }),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final bool showBack;
  final bool showSearch;
  final bool showCart;
  final bool showNotification;
  final int cartCount;
  final VoidCallback? onSearchTap;
  final VoidCallback? onCartTap;
  final VoidCallback? onNotificationTap;

  const CustomAppBar({
    super.key,
    this.title,
    this.showBack = false,
    this.showSearch = false,
    this.showCart = false,
    this.showNotification = false,
    this.cartCount = 0,
    this.onSearchTap,
    this.onCartTap,
    this.onNotificationTap,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      centerTitle: false,
      leading: showBack
          ? IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () => Get.back(),
            )
          : null,
      title: Text(
        title ?? "",
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
      actions: [
        /// 🔍 Search
        if (showSearch)
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: onSearchTap,
          ),

        /// 🔔 Notification
        if (showNotification)
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: onNotificationTap,
          ),

        /// 🛒 Cart with Badge
        if (showCart)
          Stack(
            children: [
              IconButton(
                icon: const Icon(Icons.shopping_cart),
                onPressed: onCartTap,
              ),
              if (cartCount > 0)
                Positioned(
                  right: 6,
                  top: 6,
                  child: Container(
                    padding: const EdgeInsets.all(4),
                    decoration: const BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                    ),
                    child: Text(
                      cartCount.toString(),
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                      ),
                    ),
                  ),
                ),
            ],
          ),

        const SizedBox(width: 8),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

import 'package:flutter/material.dart';

import '../../../presentation/product/product_view/model/all_product_model.dart';

class ProductDetailsWidget extends StatelessWidget {
  final Products product;
  final VoidCallback onAddToCart;

  const ProductDetailsWidget({
    super.key,
    required this.product,
    required this.onAddToCart,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// Product Image
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.network(
            product.images!.first,
            height: 280,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),

        const SizedBox(height: 15),

        /// Title
        Text(
          product.title ?? '',
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),

        const SizedBox(height: 8),

        /// Price
        Text(
          "₹ ${product.price}",
          style: const TextStyle(
            fontSize: 18,
            color: Colors.green,
            fontWeight: FontWeight.w600,
          ),
        ),

        const SizedBox(height: 8),

        /// Rating
        Row(
          children: [
            const Icon(Icons.star, color: Colors.orange, size: 20),
            const SizedBox(width: 5),
            Text(
              product.rating.toString(),
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),

        const SizedBox(height: 15),

        /// Description
        const Text(
          "Description",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),

        const SizedBox(height: 6),

        Text(
          product.description ?? '',
          style: const TextStyle(fontSize: 15, color: Colors.black87),
        ),

        const SizedBox(height: 25),

        /// Add To Cart Button
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: onAddToCart,
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 14),
              backgroundColor: Colors.black,
            ),
            child: const Text(
              "Add To Cart",
              style: TextStyle(fontSize: 16),
            ),
          ),
        ),
      ],
    );
  }
}

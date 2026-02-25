import 'package:flutter/material.dart';

class AppGridView<T> extends StatelessWidget {
  final List<T> items;
  final Widget Function(T item, int index) itemBuilder;

  const AppGridView({
    super.key,
    required this.items,
    required this.itemBuilder,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: items.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 12,
        crossAxisSpacing: 12,
        childAspectRatio: .75,
      ),
      itemBuilder: (context, index) => itemBuilder(items[index], index),
    );
  }
}

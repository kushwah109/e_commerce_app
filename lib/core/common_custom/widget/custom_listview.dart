import 'package:flutter/material.dart';

class AppListView<T> extends StatelessWidget {
  final List<T> items;
  final Widget Function(T item, int index) itemBuilder;

  const AppListView({
    super.key,
    required this.items,
    required this.itemBuilder,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: items.length,
      separatorBuilder: (_, __) => const SizedBox(height: 10),
      itemBuilder: (context, index) => itemBuilder(items[index], index),
    );
  }
}

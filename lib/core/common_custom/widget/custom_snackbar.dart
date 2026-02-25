import 'dart:ui';

import 'package:flutter/material.dart';

enum SnackType { success, error, alert }

class AppSnackbarWidget extends StatelessWidget {
  final String message;
  final SnackType type;

  const AppSnackbarWidget({
    super.key,
    required this.message,
    required this.type,
  });
  Color get color {
    switch (type) {
      case SnackType.success:
        return Colors.green;
      case SnackType.error:
        return Colors.red;
      case SnackType.alert:
        return Colors.orange;
    }
  }

  IconData get icon {
    switch (type) {
      case SnackType.success:
        return Icons.check_circle;
      case SnackType.error:
        return Icons.error;
      case SnackType.alert:
        return Icons.warning;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: SafeArea(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          padding: const EdgeInsets.all(14),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(14),
            boxShadow: [
              BoxShadow(
                blurRadius: 15,
                color: Colors.black.withOpacity(.15),
                offset: const Offset(0, 6),
              ),
            ],
            border: Border(left: BorderSide(color: color, width: 5)),
          ),
          child: Row(
            children: [
              CircleAvatar(
                radius: 18,
                backgroundColor: color.withOpacity(.15),
                child: Icon(icon, color: color, size: 20),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  message,
                  style: const TextStyle(
                      fontSize: 14, fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

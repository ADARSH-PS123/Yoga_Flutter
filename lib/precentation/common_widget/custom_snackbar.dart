import 'package:flutter/material.dart';

class CustomSnackBar {
  static void show(BuildContext context, String message, Color color) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: color,
        content: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Text(
                message,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
      // ),
    );
  }
}

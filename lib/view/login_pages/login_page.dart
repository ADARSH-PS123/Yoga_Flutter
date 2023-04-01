import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class LoginOptionsPage extends StatelessWidget {
  const LoginOptionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 212, 187, 160),

      body: SafeArea(
        child: Image.asset(
          'asset/05.png',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

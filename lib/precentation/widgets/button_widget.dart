import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget(
      {super.key,
      required this.title,
      required this.width,
      required this.onPressed});

  final double width;
  final void Function()? onPressed;
  final String title;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ElevatedButton(
      style: ButtonStyle(
        minimumSize: MaterialStatePropertyAll(Size(size.width * width, 40)),
        backgroundColor: MaterialStateProperty.all(Colors.white),
      ),
      onPressed: onPressed,
      child: Text(
        title,
        style: const TextStyle(color: Colors.black, fontSize: 20),
      ),
    );
  }
}

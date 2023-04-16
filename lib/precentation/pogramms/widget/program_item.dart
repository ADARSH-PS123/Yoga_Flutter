import 'package:flutter/material.dart';

class ProgrammItem extends StatelessWidget {
  final String imgUrl;
  final String name;
  const ProgrammItem({
    required this.imgUrl,
    required this.name,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: const Color(0xff4D5D81)),
      width: 150,
      height: 150,
      child: Column(
        children: [
          Expanded(
            child: Container(
              width: double.maxFinite,
              decoration:  BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(6),
                    topRight: Radius.circular(6),
                  ),
                  color: Colors.white,
                  image: DecorationImage(image: NetworkImage(imgUrl))),
            ),
          ),
          SizedBox(
            height: 30,
            child: Center(
              child: Text(
                name,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

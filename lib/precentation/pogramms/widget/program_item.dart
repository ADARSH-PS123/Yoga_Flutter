import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ProgrammItem extends StatelessWidget {
  final String imgUrl;
  final String name;
  final Color? color;
  const ProgrammItem({
    required this.imgUrl,
    required this.name,
    this.color,
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
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(6),
                  topRight: Radius.circular(6),
                ),
                color: color ?? Colors.white,
                // image: DecorationImage(
                //     fit: BoxFit.cover, image:
                // )
              ),
              child: ClipRRect(
                  borderRadius: const BorderRadiusDirectional.only(
                    topStart: Radius.circular(6),
                    topEnd: Radius.circular(6),
                  ),
                  child: Image.asset(
                    imgUrl,
                    fit: BoxFit.cover,
                  )

                  //  CachedNetworkImage(
                  //   fit: BoxFit.cover,
                  //   errorWidget: (context, url, error) => const Icon(Icons.error),
                  //   imageUrl: imgUrl,
                  // ),
                  ),
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

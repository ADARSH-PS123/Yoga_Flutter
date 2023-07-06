import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ProgrammItem extends StatelessWidget {
  final String imgUrl;
  final String name;
  final Color? color;
  final bool isVoice;
  final double? height;
  const ProgrammItem({
    required this.imgUrl,
    required this.name,
    required this.isVoice,
    this.color,
    super.key,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: const Color(0xff4D5D81)),
      width: 150,
      height: height?? 150,
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
                child: !isVoice
                    ? Image.asset(
                        imgUrl,
                        fit: BoxFit.cover,
                      )
                    : CachedNetworkImage(
                        fit: BoxFit.cover,
                        errorWidget: (context, url, error) =>
                            const Icon(Icons.error),
                        imageUrl: imgUrl,
                      ),
              ),
            ),
          ),
          SizedBox(
            height: 35,
            child: Center(
              child: Text(
                name,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

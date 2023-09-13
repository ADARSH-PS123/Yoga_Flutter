import 'package:flutter/material.dart';

import 'main/widgets/bottom_navigation_widgets.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      child: InkWell(
          onTap: () => selectedIndexNorifier.value = 2,
          child: Image.asset("asset/home.jpg")),
    );
  }
}

import 'package:flutter/material.dart';

ValueNotifier<int> selectedIndexNorifier = ValueNotifier<int>(0);

class BottomWidget extends StatelessWidget {
  const BottomWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: selectedIndexNorifier,
        builder: (context, int index, _) {
          return SafeArea(
            child: BottomAppBar(
              color: Colors.transparent,
              elevation: 0,
              height: 80,
              child: Container(
                margin: const EdgeInsets.only(left: 20, right: 20),
                padding: const EdgeInsets.only(left: 10, right: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white),
                child: const Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    NavigationItem(iconName: "asset/icon/home.png", id: 0),
                    NavigationItem(iconName: "asset/icon/voice.png", id: 1),
                    NavigationItem(iconName: "asset/icon/sky.png", id: 2),
                    NavigationItem(iconName: "asset/icon/yoga.png", id: 3),
                  ],
                ),
              ),
            ),
          );
        });
  }
}

class NavigationItem extends StatelessWidget {
  final String iconName;
  final int id;
  const NavigationItem({
    super.key,
    required this.iconName,
    required this.id,
  });

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: selectedIndexNorifier,
        builder: (context, int index, _) {
          return Expanded(
            child: GestureDetector(
              onTap: () {
                selectedIndexNorifier.value = id;
              },
              child: Container(
                padding: const EdgeInsets.all(5),
                margin:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color:
                      selectedIndexNorifier.value == id ? null : Colors.white,
                  gradient: selectedIndexNorifier.value == id
                      ? LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Colors.white,
                            Colors.grey.withOpacity(0.5),
                          ],
                        )
                      : null,
                ),
                child: Image.asset(
                  iconName,
                ),
              ),
            ),
          );
        });
  }
}

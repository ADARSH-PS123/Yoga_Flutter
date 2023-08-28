import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:yoga/core/di/pgram_list.dart';

void showPopup(BuildContext context, Prize prize) async {
  final result = await showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(30),
      ),
    ),
    builder: (BuildContext context) {
      return DescriptionSheet(
        prize: prize,
      );
    },
  );

  if (result == 'cancel') {
    // Handle cancel button pressed
  } else if (result == 'subscribe') {
    // Handle subscribe button pressed
  }
}

class DescriptionSheet extends StatelessWidget {
  final Prize prize;
  const DescriptionSheet({
    super.key,
    required this.prize,
  });

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Container(
        height: w,
        padding: const EdgeInsets.all(20),
        child: DefaultTabController(
          length: 2,
          initialIndex: 0,
          child: Column(
            children: <Widget>[
              TabBar(
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.5),
                        blurRadius: 12,
                        offset: const Offset(1, 2))
                  ],
                  gradient: LinearGradient(
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                    colors: [
                      Colors.black,
                      Colors.black.withOpacity(0.7),
                    ],
                  ),
                ),
                labelColor: Colors.white,
                unselectedLabelColor: Colors.black,
                automaticIndicatorColorAdjustment: false,
                dragStartBehavior: DragStartBehavior.start,
                labelStyle: const TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold),
                dividerColor: Colors.black,
                indicatorColor: Colors.black,
                unselectedLabelStyle: const TextStyle(
                  color: Colors.black,
                ),
                indicatorWeight: 5,
                tabs: const <Tab>[
                  Tab(
                    child: Text(
                      "Online",
                    ),
                  ),
                  Tab(
                    child: Text("Offline"),
                  )
                ],
              ),
              prize.offline['note'] == null
                  ? Expanded(
                      child: SizedBox(
                        child: TabBarView(
                          children: <Widget>[
                            prize.online.isEmpty
                                ? const Center(
                                    child: Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text(
                                        "Online mode not available right now",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.red,
                                        ),
                                      ),
                                    ),
                                  )
                                : buildOnline(prize.online["pr"],
                                    prize.online["no"], prize.online["to"]),
                            prize.offline.isEmpty
                                ? const Center(
                                    child: Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text(
                                        "Offline mode not available right now",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.red,
                                        ),
                                      ),
                                    ),
                                  )
                                : buildOffline(prize.offline["pr"],
                                    prize.offline["no"], prize.offline["to"])
                          ],
                        ),
                      ),
                    )
                  : Expanded(
                      child: SizedBox(
                      child: TabBarView(children: [
                        Center(
                          child: Text(
                            prize.online['note'] ??
                                "Online mode not available right now",
                            style: const TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Center(
                          child: Text(
                            prize.offline['note'] ??
                                "Offline mode not available right now",
                            style: const TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      ]),
                    )),
              SizedBox(
                height: 80,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Expanded(
                      child: TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.grey.shade300,
                          foregroundColor: Colors.black,
                          padding: const EdgeInsets.symmetric(
                            vertical: 15,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                              30,
                            ),
                          ),
                        ),
                        onPressed: () {
                          Navigator.pop(context, 'cancel');
                        },
                        child: Text('Cancel'),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      child: TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.black,
                          foregroundColor: Colors.white,
                          padding: const EdgeInsets.symmetric(
                            vertical: 15,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                              30,
                            ),
                          ),
                        ),
                        onPressed: () {
                          Navigator.pop(
                            context,
                          );
                        },
                        child: const Text('Subscribe'),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildOnline(String pr, nu, to) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
      child: SizedBox(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buildContent("Prize per session", pr),
            buildContent("Number of session", nu),
            buildContent("Total prize", to),
          ],
        ),
      ),
    );
  }

  Widget buildOffline(String pr, nu, to) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
      child: SizedBox(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buildContent("Prize per session", pr),
            buildContent("Number of session", nu),
            buildContent("Total prize", to),
          ],
        ),
      ),
    );
  }

  Widget buildContent(String name, value) => Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: Row(
          children: [
            Expanded(
                flex: 2,
                child: Text(
                  name,
                  style: const TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                )),
            const Text(
              ":",
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Expanded(
                child: Text.rich(
              TextSpan(
                  text: "\$ ",
                  style: const TextStyle(color: Colors.red),
                  children: [
                    TextSpan(
                      text: value,
                      style: const TextStyle(
                        color: Colors.black,
                      ),
                    )
                  ]),
              textAlign: TextAlign.right,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ))
          ],
        ),
      );
}

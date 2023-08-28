import 'package:flutter/material.dart';
import 'package:yoga/precentation/initialize/initialize.dart';
import 'package:yoga/precentation/main/widgets/bottom_navigation_widgets.dart';
import 'package:yoga/precentation/pogramms/all_voice_page.dart';
import '../../core/constants.dart';
import '../../core/secure_storage.dart';
import '../../core/show_alert_dialog.dart';
import '../home.dart';
import '../pogramms/all_programm.dart';
import '../pogramms/all_sky_page.dart';
import '../pogramms/pogramms_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  static const List<Map<String, dynamic>> _pagesOptions =
      <Map<String, dynamic>>[
    {"page": Home(), "appbar": null},
    {"page": AllVoicePage(), "appbar": AllVoiceAppBar()},
    {"page": ProgrammsPage(), "appbar": null},
    {"page": AllSkyPage(), "appbar": AllSkyAppBar()},
    {"page": AllProgrammPage(), "appbar": AllProgrammAppBar()},
  ];

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: selectedIndexNorifier,
      builder: (context, int index, _) {
        return WillPopScope(
          onWillPop: () async {
            if (selectedIndexNorifier.value != 0) {
              selectedIndexNorifier.value = 0;
              return false;
            } else {
              AppAlerts().showExitAppShowDialogue(context, () {});
            }
            return true;
          },
          child: Scaffold(
            backgroundColor: selectedIndexNorifier.value == 0
                ? const Color(0xff01153A)
                : const Color(0xFF927297),
            body: _pagesOptions.elementAt(index)["page"],
            appBar: _pagesOptions.elementAt(index)["appbar"],
            bottomNavigationBar: const BottomWidget(),
            drawer: const DrawerWidget(),
          ),
        );
      },
    );
  }
}

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xFF927297),
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                image: const DecorationImage(
                  image: AssetImage("asset/logo.png"),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20, bottom: 50),
              child: Text(
                "Sanjeevkrishna",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListTile(
              onTap: () {},
              title: const Text("Settings"),
              leading: const Icon(
                Icons.settings,
                color: Colors.white,
              ),
            ),
            ListTile(
              onTap: () {},
              title: const Text("Contact Us"),
              leading: const Icon(
                Icons.contact_emergency,
                color: Colors.white,
              ),
            ),
            ListTile(
              onTap: () {},
              title: const Text("Privacy Policy"),
              leading: const Icon(
                Icons.privacy_tip,
                color: Colors.white,
              ),
            ),
            ListTile(
              onTap: () async {
                await deleteFromSS(secureStoreKey)
                    .then((value) => Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(
                          builder: (context) => const Initialize(),
                        ),
                        (route) => false));
              },
              title: const Text("Logout"),
              leading: const Icon(
                Icons.logout_rounded,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:yoga/precentation/main/widgets/bottom_navigation_widgets.dart';
import 'package:yoga/precentation/pogramms/all_voice_page.dart';
import '../../core/show_alert_dialog.dart';
import '../pogramms/all_programm.dart';
import '../pogramms/all_sky_page.dart';
import '../pogramms/pogramms_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  static const List<Map<String, dynamic>> _pagesOptions =
      <Map<String, dynamic>>[
    {"page": ProgrammsPage(), "appbar": null},
    {"page": AllVoicePage(), "appbar": AllVoiceAppBar()},
    {"page": AllSkyPage(), "appbar": AllSkyAppBar()},
    {"page": AllProgrammPage(), "appbar": AllProgrammAppBar()},
    {"page": ProgrammsPage(), "appbar": null},
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
            backgroundColor: const Color(0xFF927297),
            body: _pagesOptions.elementAt(index)["page"],
            appBar: _pagesOptions.elementAt(index)["appbar"],
            bottomNavigationBar: const BottomWidget(),
          ),
        );
      },
    );
  }
}

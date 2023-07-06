import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppAlerts {
  // void showLogoutAlertDialog(BuildContext context) {
  //   showDialog(
  //     context: context,
  //     builder: (BuildContext context) {
  //       return AlertWidget(
  //         title: 'Logout',
  //         content: 'Are you sure you want to logout?',
  //         acton: BlocConsumer<LoginBloc, LoginState>(
  //           listener: (context, state) {
  //             if (!state.isLoading && !state.hasOtpData) {
  //               Navigator.of(context).pop();

  //               CustomSnackBar.showSnackBar(
  //                   context: context,
  //                   message: 'You have successfully logged out.');

  //               // CustomSnackBar().showSnack(
  //               //     context: context,
  //               //     message: "You have successfully logged out.");

  //               Navigator.of(context).pushAndRemoveUntil(
  //                   MaterialPageRoute(builder: (context) => const Initialize()),
  //                   (route) => false);
  //             }
  //           },
  //           builder: (context, state) {
  //             if (state.isLoading) {
  //               return const SizedBox(
  //                 width: 10,
  //                 height: 10,
  //                 child: Center(
  //                   child: CircularProgressIndicator(
  //                     color: AppColor.primeryLight,
  //                   ),
  //                 ),
  //               );
  //             }

  //             return TextButton(
  //               child: const Text('Logout'),
  //               onPressed: () {
  //                 context.read<LoginBloc>().add(const LoginEvent.logOut());
  //               },
  //             );
  //           },
  //         ),
  //       );
  //     },
  //   );
  // }

  void showExitAppShowDialogue(BuildContext context, ontap) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertWidget(
          title: "Exit App",
          content: 'Are you sure you want to exit from Sanjeevkrishna App?',
          acton: TextButton(
            child: const Text('Yes! ok'),
            onPressed: () {
              SystemNavigator.pop();
            },
          ),
        );
      },
    );
  }
}

class AlertWidget extends StatelessWidget {
  final Widget acton;
  final String title;
  final String content;

  const AlertWidget({
    super.key,
    required this.acton,
    required this.content,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(title),
      content: Text(content),
      actions: [
        TextButton(
          child: const Text('Cancel'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        acton
      ],
    );
  }
}

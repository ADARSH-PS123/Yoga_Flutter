import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yoga/application/entroll/entroll_bloc.dart';
import 'package:yoga/core/di/pgram_list.dart';
import 'package:yoga/precentation/common_widget/custom_snackbar.dart';
import 'package:yoga/precentation/widget/button_widget.dart';

import '../../domain/entroll/model/list.dart';
import '../widgets/popup_widget.dart';

class ProgramDetailsPage extends StatelessWidget {
  final Program programs;
  const ProgramDetailsPage({super.key, required this.programs});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<EntrollBloc>().add(const EntrollEvent.getlist());
    });

    return Scaffold(
      backgroundColor: programs.bgColor,
      body: Container(
        decoration: BoxDecoration(gradient: programs.linearGradient),
        width: double.maxFinite,
        height: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: double.maxFinite,
              child: Stack(
                children: [
                  SizedBox(
                      width: double.maxFinite,
                      child: Image.asset(
                        '${programs.image}',
                        fit: BoxFit.cover,
                      )

                      // CachedNetworkImage(
                      //   fit: BoxFit.cover,
                      //   errorWidget: (context, url, error) =>
                      //       const Icon(Icons.error),
                      //   imageUrl: '${programs.image}',
                      // ),
                      ),
                  SafeArea(
                      child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: CircleAvatar(
                        maxRadius: 25,
                        minRadius: 25,
                        backgroundColor: Colors.black.withOpacity(0.5),
                        child: const Center(
                          child: Icon(
                            Icons.arrow_back_ios_new,
                            color: Colors.white,
                            size: 16,
                          ),
                        ),
                      ),
                    ),
                  )),
                ],
              ),
            ),
            Expanded(
              flex: 3,
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 20, right: 20, bottom: 20, top: 20),
                  child: SizedBox(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        programs.mainTitle == null || !programs.showTitle
                            ? const SizedBox()
                            : Text(
                                programs.mainTitle.toString(),
                                style: TextStyle(
                                    color: programs.txtColor,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold),
                              ),
                        programs.subTitle == null
                            ? const SizedBox()
                            : Padding(
                                padding:
                                    const EdgeInsets.only(top: 15, bottom: 15),
                                child: Text(
                                  programs.subTitle.toString(),
                                  style: TextStyle(
                                      color: programs.txtColor, fontSize: 18),
                                ),
                              ),
                        Text(
                          programs.description.toString(),
                          style: TextStyle(
                              color: programs.txtColor,
                              fontFamily: "Nexa",
                              height: 1.5,
                              fontSize: 16,
                              fontStyle: FontStyle.normal),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        BlocConsumer<EntrollBloc, EntrollState>(
                          listener: (context, state) {
                            if (state.getlist != null) {
                              final GetList data =
                                  context.read<EntrollBloc>().state.getlist!;

                              List? name = data.data!
                                  .where((element) =>
                                      element.progrmName == programs.mainTitle)
                                  .toList();
                              if (name.isNotEmpty && !state.listLoding) {
                                CustomSnackBar.show(
                                  context,
                                  'Your are already entrolled to this program! 🥳',
                                  programs.bgColor,
                                );
                              }
                            }
                          },
                          builder: (context, state) {
                            if (state.listLoding) {
                              return const CircularProgressIndicator();
                            } else if (state.getlist != null) {
                              final GetList data =
                                  context.read<EntrollBloc>().state.getlist!;

                              List? name = data.data!
                                  .where((element) =>
                                      element.progrmName == programs.mainTitle)
                                  .toList();
                              if (name.isNotEmpty) {
                                return const SizedBox();
                              }
                            } else {
                              return ButtonWidget(
                                  buttonName: "REGISTER NOW",
                                  voidCallback: () {
                                    // context.read<EntrollBloc>().add(
                                    //       EntrollEvent.entroll(
                                    //         id: programs.mainTitle.toString(),
                                    //       ),
                                    //     );
                                    showPopup(context, programs.prize!);
                                  },
                                  isLoading: false);
                            }
                            return ButtonWidget(
                                buttonName: "REGISTER NOW",
                                voidCallback: () {
                                  // context.read<EntrollBloc>().add(
                                  //       EntrollEvent.entroll(
                                  //         id: programs.mainTitle.toString(),
                                  //       ),
                                  //     );
                                  showPopup(
                                      context,
                                      programs.prize ??
                                          const Prize(offline: {}, online: {}));
                                },
                                isLoading: false);
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

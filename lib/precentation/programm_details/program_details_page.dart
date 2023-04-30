import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yoga/application/entroll/entroll_bloc.dart';
import 'package:yoga/core/di/pgram_list.dart';
import 'package:yoga/precentation/widget/button_widget.dart';

class ProgramDetailsPage extends StatelessWidget {
  final Program programs;
  const ProgramDetailsPage({super.key, required this.programs});

  @override
  Widget build(BuildContext context) {
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
                      programs.mainTitle==null?const SizedBox() : Text(
                          programs.mainTitle.toString(),
                          style: TextStyle(
                              color: programs.txtColor,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                       programs.subTitle==null?const SizedBox() :  Padding(
                          padding: const EdgeInsets.only(top: 15, bottom: 15),
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
                              height: 1.5,
                              fontSize: 16,
                              fontStyle: FontStyle.normal),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        BlocConsumer<EntrollBloc, EntrollState>(
                          listener: (context, state) {
                            // TODO: implement listener
                          },
                          builder: (context, state) {
                            return ButtonWidget(
                              buttonName: "REGISTER NOW",
                              voidCallback: () {
                                context.read<EntrollBloc>().add(
                                      EntrollEvent.entroll(
                                        id: programs.id.toString(),
                                      ),
                                    );
                              },
                              isLoading: state.isLoading,
                            );
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

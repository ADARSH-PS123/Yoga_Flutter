import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yoga/application/programms/programms_bloc.dart';
import 'package:yoga/core/di/pgram_list.dart';
import 'package:yoga/core/di/pgram_list.dart';
import 'package:yoga/domain/programms/model/programms.dart';
import 'package:yoga/precentation/pogramms/widget/program_item.dart';
import 'package:yoga/precentation/programm_details/program_details_page.dart';
import '../../core/constants.dart';
import '../../core/secure_storage.dart';

class ProgrammsPage extends StatelessWidget {
  const ProgrammsPage({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<ProgrammsBloc>().add(const ProgrammsEvent.getProgramms());
    });
    return Scaffold(
      backgroundColor: const Color(0xFF927297),
      body: Column(
        children: [
          Expanded(
              child: Container(
            width: double.maxFinite,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage("asset/image_pograms.jpg"),
              ),
            ),
          )),
          const Divider(
            color: Colors.white,
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: SizedBox(
                width: double.maxFinite,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "PROGRAMS",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    BlocConsumer<ProgrammsBloc, ProgrammsState>(
                      listener: (context, state) {
                        // TODO: implement listener
                      },
                      builder: (context, state) {
                        if (state.isLoading) {
                          return const Center(
                            child:
                                CircularProgressIndicator(color: Colors.white),
                          );
                        } else if (state.isError) {
                          return const Center(
                            child: Text("No Data Found"),
                          );
                        } else if (state.isData) {
                          final Programs data = context
                              .read<ProgrammsBloc>()
                              .state
                              .programmsDetails!;
                          return SizedBox(
                            height: 150,
                            width: double.maxFinite,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: p.length,
                              itemBuilder: (context, index) => InkWell(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => ProgramDetailsPage(
                                          programs: p[index]),
                                    ),
                                  );
                                },
                                child: ProgrammItem(
                                    color: p[index].bgColor,
                                    name: p[index].mainTitle.toString(),
                                    imgUrl: p[index].image.toString()),
                              ),
                            ),
                          );
                        } else {
                          return const Center(
                            child: Text("No Data Found"),
                          );
                        }
                      },
                    ),
                    // TextButton(
                    //     onPressed: () async {
                    //       await deleteFromSS(secureStoreKey);
                    //     },
                    //     child: const Text("Logout"))
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

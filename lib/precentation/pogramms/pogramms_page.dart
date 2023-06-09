import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yoga/application/programms/programms_bloc.dart';
import 'package:yoga/application/voice/voice_bloc.dart';
import 'package:yoga/core/di/pgram_list.dart';
import 'package:yoga/domain/voice/model/voice.dart';
import 'package:yoga/precentation/pogramms/widget/program_item.dart';
import 'package:yoga/precentation/programm_details/program_details_page.dart';
import 'package:yoga/precentation/voice_details_page/voice_detailse_page.dart';

import '../main/widgets/bottom_navigation_widgets.dart';

class ProgrammsPage extends StatelessWidget {
  const ProgrammsPage({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<ProgrammsBloc>().add(const ProgrammsEvent.getProgramms());
      context.read<VoiceBloc>().add(const VoiceEvent.getVoiceofSky());
      context.read<VoiceBloc>().add(const VoiceEvent.getWisdomVoice());
    });
    return SingleChildScrollView(
      child: Column(
        children: [
          Image.asset(
            "asset/image_pograms.jpg",
            fit: BoxFit.fill,
          ),
          const Divider(
            color: Colors.white,
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: SizedBox(
              width: double.maxFinite,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "PROGRAMS",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      InkWell(
                        onTap: () => selectedIndexNorifier.value = 3,
                        child: const Icon(
                          Icons.arrow_forward_ios,
                        ),
                      )
                    ],
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
                          child: CircularProgressIndicator(color: Colors.white),
                        );
                      } else if (state.isError) {
                        return const Center(
                          child: Text("No Data Found"),
                        );
                      } else if (state.isData) {
                        context.read<ProgrammsBloc>().state.programmsDetails!;
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
                                    builder: (context) =>
                                        ProgramDetailsPage(programs: p[index]),
                                  ),
                                );
                              },
                              child: ProgrammItem(
                                  isVoice: false,
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
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Voice of SKY",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      InkWell(
                        onTap: () => selectedIndexNorifier.value = 2,
                        child: const Icon(
                          Icons.arrow_forward_ios,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  BlocConsumer<VoiceBloc, VoiceState>(
                    listener: (context, state) {
                      // TODO: implement listener
                    },
                    builder: (context, state) {
                      if (state.isLoading) {
                        return const Center(
                          child: CircularProgressIndicator(color: Colors.white),
                        );
                      } else if (state.isError) {
                        return const Center(
                          child: Text("No Data Found"),
                        );
                      } else if (state.isvoiceofskyData) {
                        final VoiceData voiceOfSky =
                            context.read<VoiceBloc>().state.voiceOfSky!;
                        return SizedBox(
                          height: 150,
                          width: double.maxFinite,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: voiceOfSky.data!.length,
                            itemBuilder: (context, index) => InkWell(
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => VoiceDetailsePage(
                                        voiceData:
                                            state.voiceOfSky!.data![index]),
                                  ),
                                );
                              },
                              child: ProgrammItem(
                                  isVoice: true,
                                  color: p[index].bgColor,
                                  name:
                                      voiceOfSky.data![index].title.toString(),
                                  imgUrl:
                                      "https://gurujisanjeevkrishna.com/${voiceOfSky.data![index].image}"),
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
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "SKY WISDOM",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      InkWell(
                        onTap: () => selectedIndexNorifier.value = 1,
                        child: const Icon(
                          Icons.arrow_forward_ios,
                        ),
                      )
                    ],
                  ),
                  BlocConsumer<VoiceBloc, VoiceState>(
                    listener: (context, state) {
                      // TODO: implement listener
                    },
                    builder: (context, state) {
                      if (state.isLoading) {
                        return const Center(
                          child: CircularProgressIndicator(color: Colors.white),
                        );
                      } else if (state.isError) {
                        return const Center(
                          child: Text("No Data Found"),
                        );
                      } else if (state.isWisdomData && !state.isLoading) {
                        final VoiceData wisdomVoice = state.wisdomVoice!;
                        return SizedBox(
                          height: 150,
                          width: double.maxFinite,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: wisdomVoice.data!.length,
                            itemBuilder: (context, index) => InkWell(
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => VoiceDetailsePage(
                                      voiceData:
                                          state.wisdomVoice!.data![index],
                                    ),
                                  ),
                                );
                              },
                              child: ProgrammItem(
                                  isVoice: true,
                                  color: p[index].bgColor,
                                  name:
                                      wisdomVoice.data![index].title.toString(),
                                  imgUrl:
                                      "https://gurujisanjeevkrishna.com/${wisdomVoice.data![index].image}"),
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
                  const SizedBox(
                    height: 15,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

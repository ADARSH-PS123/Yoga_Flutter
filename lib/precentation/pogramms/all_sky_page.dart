import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yoga/precentation/pogramms/widget/program_item.dart';
import '../../application/voice/voice_bloc.dart';
import '../../core/di/pgram_list.dart';
import '../../domain/voice/model/voice.dart';
import '../voice_details_page/voice_detailse_page.dart';

class AllSkyPage extends StatelessWidget {
  const AllSkyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<VoiceBloc, VoiceState>(
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
            width: double.maxFinite,
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: voiceOfSky.data!.length,
              itemBuilder: (context, index) => InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => VoiceDetailsePage(
                        voiceData: state.voiceOfSky!.data![index],
                         user: state.voiceOfSky!.user!,
                        vsky: true,
                      ),
                    ),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 5, top: 20),
                  child: ProgrammItem(
                      height: 200,
                      isVoice: true,
                      color: p[index].bgColor,
                      name: voiceOfSky.data![index].title.toString(),
                      imgUrl:
                          "https://gurujisanjeevkrishna.com/${voiceOfSky.data![index].image}"),
                ),
              ),
            ),
          );
        } else {
          return const Center(
            child: Text("No Data Found"),
          );
        }
      },
    );
  }
}

class AllSkyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const AllSkyAppBar({
    super.key,
  });
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xFF927297),
      elevation: 2,
      centerTitle: false,
      title: const Text(
          /*    "Hi,${authController.userModel.value!.name} 👋", */
          "All Voice Of SKY",
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16)),
    );
  }
}

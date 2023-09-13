import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yoga/precentation/pogramms/widget/program_item.dart';

import '../../application/programms/programms_bloc.dart';
import '../../core/di/pgram_list.dart';
import '../programm_details/program_details_page.dart';

class AllProgrammPage extends StatelessWidget {
  const AllProgrammPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AllProgrammAppBar(),
      body: BlocBuilder<ProgrammsBloc, ProgrammsState>(
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
              width: double.maxFinite,
              child: ListView.builder(
                scrollDirection: Axis.vertical,
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
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, right: 5, top: 20),
                    child: ProgrammItem(
                        height: 200,
                        isVoice: false,
                        color: p[index].bgColor,
                        name: p[index].mainTitle.toString(),
                        imgUrl: p[index].image.toString()),
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
      ),
    );
  }
}

class AllProgrammAppBar extends StatelessWidget implements PreferredSizeWidget {
  const AllProgrammAppBar({
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
          "All Programs",
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16)),
    );
  }
}

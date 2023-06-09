import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../application/initialiize/initilize_bloc.dart';
import '../main/main_page.dart';
import '../onboarding/onboarding_page.dart';


class Initialize extends StatelessWidget {
  const Initialize({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<InitilizeBloc>(context)
          .add(const InitilizeEvent.initial());
      // context.read<HelpCenterBloc>().add(const HelpCenterEvent.initial());
    });
    return BlocBuilder<InitilizeBloc, InitilizeState>(
        buildWhen: (previous, current) {
          return previous != current;
        },
        builder: (context, state) {
          if (state.isLoading) {
            return const Scaffold(body:  Center(child: CircularProgressIndicator()));
          } 
           else if (state.isToken) {
            return const MainPage();
          } else if (!state.isToken) {
            return const OnBoardingScreen();
          } else {
           return const Scaffold(body:  Center(child: CircularProgressIndicator()));
          }
        },
      );
  }
}

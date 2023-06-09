import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yoga/application/initialiize/initilize_bloc.dart';
import 'package:yoga/application/login/login_bloc.dart';
import 'package:yoga/application/programms/programms_bloc.dart';
import 'package:yoga/application/voice/voice_bloc.dart';
import 'package:yoga/core/di/injectable.dart';
import 'package:yoga/core/theme/theme.dart';
import 'package:yoga/precentation/initialize/initialize.dart';
import 'application/entroll/entroll_bloc.dart';
import 'application/register/register_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await configureInjeactable();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => InitilizeBloc()),
        BlocProvider(create: (context) => getIt<RegisterBloc>()),
        BlocProvider(create: (context) => getIt<LoginBloc>()),
        BlocProvider(create: (context) => getIt<ProgrammsBloc>()),
        BlocProvider(create: (context) => getIt<EntrollBloc>()),
        BlocProvider(create: (context) => getIt<VoiceBloc>()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: AppThemes.lightTheme(),
        home: const Initialize(),
      ),
    );
  }
}

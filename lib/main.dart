import 'package:flutter/material.dart';
import 'package:yoga/core/theme/colors.dart';
import 'package:yoga/core/theme/theme.dart';

import 'package:yoga/view/onboarding_page.dart/onboardingPage.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',

      theme: AppThemes.lightTheme(),
      home: const OnBoardingScreen(),
    );
  }
}


class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:AppColor.SplashScreenColor ,
      body: Column(
   
     mainAxisAlignment: MainAxisAlignment.center,
       crossAxisAlignment: CrossAxisAlignment.center,
      
        children: [
          Center(
            child: Text("SANJEEV KRISHNA",style:Theme.of(context).textTheme.titleLarge
            ,),
          ),
            Center(
              child: Text("YOGA", style:Theme.of(context).textTheme.titleLarge,),
            ),
        ],
      ),
    );
  }
}
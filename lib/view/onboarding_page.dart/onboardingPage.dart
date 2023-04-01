
import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:yoga/core/theme/colors.dart';
import 'package:yoga/view/onboarding_page.dart/onboarding_slider.dart';
import 'package:yoga/view/widgets/button_widget.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColor.lightGray,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image.asset(
            "asset/guru.jpg",
            fit: BoxFit.cover,
            alignment: Alignment.topCenter,
          ),
          ImageFiltered(imageFilter: ImageFilter.blur(sigmaX: 10,sigmaY: 10),
          child: ShaderMask(shaderCallback: (rect){
            return LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
stops: const [0.4,.75],
              colors: [Colors.black,Colors.black.withOpacity(0)],).createShader(rect);
          },
          blendMode: BlendMode.dstOut,
          child:  Image.asset(
            "assets/img1.png",
            fit: BoxFit.cover,
            alignment: Alignment.topCenter,
          ),
          ),
          )



     
       , Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Column(
                children: [
                  Text(
                    'Welcome',
                    style:
                      Theme.of(context).textTheme.titleMedium,
                  ),
                  Text(
                    'Sanjeev Krishna Yoga',
                    style:
                        Theme.of(context).textTheme.titleMedium,
                  ),
                  Text(
                    'House of Ancient Wisdom',
                    style:
                       Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ButtonWidget(title: 'Get Started', width: .8, onPressed: (){
                     Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => const OnBoardingSlider(),
          )
          );
                  }),
                  const SizedBox(
                    height: 6,
                  ),
                   Text(
                    'By signing up you agree to terms and conditions of',
                    style:
                        Theme.of(context).textTheme.titleSmall,
                  ),
                  Text(
                    'Sanjeev Krishna Yoga Dubai',
                    style:
                        Theme.of(context).textTheme.titleSmall,
                  ),
                  const SizedBox(
                    height: 30,
                  )
                ],
              )) 
        ],
      ),
    );
  }
}



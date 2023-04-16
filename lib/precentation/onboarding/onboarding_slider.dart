import 'package:flutter/material.dart';
import 'package:yoga/core/theme/colors.dart';

import 'package:yoga/precentation/login_pages/login_page.dart';
import 'package:yoga/precentation/signup/signup_page.dart';

import 'package:yoga/precentation/widgets/button_widget.dart';

class OnBoardingSlider extends StatefulWidget {
  const OnBoardingSlider({super.key});

  @override
  State<OnBoardingSlider> createState() => _OnBoardingSliderState();
}

class _OnBoardingSliderState extends State<OnBoardingSlider> {
  List<String> images = [
    'asset/img6.jpg',
    'asset/kalari.jpg',
    'asset/img2.jpg',
    'asset/img3.jpg',
    'asset/img4.jpg',
    'asset/img5.jpg',
  ];
  List<String> quotes = [
    'BLOSSOM YOUR CREATIVE POTENTIAL \nBY MENTAL AFFIRMATIONS',
    'MASTER THE ART OF \nSELF PROTECTION',
    'NURTURE YOUR CREATION BLOSSOM IT TO CREATIVITY',
    'BE A SEEKER OF KNOWLEDGE',
    'IGNITE YOUR DIVINITY ENLIGHTEN OUR WORLD',
    'KINDER THE CHILD IN YOU AND BALANCE PHYSICAL HEALTH',
  ];
  int sliderindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.darkPink,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  PageView.builder(
                    itemCount: images.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Image.asset(
                        images[index],
                        fit: BoxFit.cover,
                      );
                    },
                    onPageChanged: (value) {
                      setState(() {
                        sliderindex = value;
                      });
                    },
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        images.length,
                        (index) => AnimatedContainer(
                          duration: const Duration(milliseconds: 300),
                          margin: const EdgeInsets.only(
                              right: 12, top: 15, bottom: 10),
                          height: index == sliderindex ? 15 : 8,
                          width: 8,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: index == sliderindex
                                ? Colors.grey
                                : Colors.grey,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      colors: [AppColor.darkPink, AppColor.lightGray],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter)),
              height: 200,
              width: double.maxFinite,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 55,
                    child: Text(quotes[sliderindex],
                        textAlign: TextAlign.center,
                        style: Theme.of(context)
                            .textTheme
                            .displayMedium!
                            .copyWith(color: AppColor.whitePure)),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ButtonWidget(
                      title: 'Login',
                      width: .8,
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const LoginOptionsPage(),
                        ));
                      }),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) => const SignupPage(),
                        ),
                      );
                    },
                    child: Text(
                      'Dont have an acoount ? Sign Up',
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

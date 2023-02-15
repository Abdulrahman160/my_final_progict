import 'package:flutter/material.dart';
import 'package:my_final_progict/conestant/image.dart';
import 'package:my_final_progict/view/OnBoarding/on_boarding%20_model.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../conestant/conset.dart';
import '../../widget/Container_Button_Color.dart';
import '../../widget/Container_Button_nonColor.dart';
import '../Login.dart';
import 'OnBording.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({
    Key? key,
    required this.data,
  }) : super(key: key);
  final OnBoarding data;

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backColor,
      body: Stack(
        children: [
          Image.asset(
            AppImage.background,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(
                flex: 5,
              ),
              // const SizedBox(
              //   height: 200,
              // ),
              Center(child: Image.asset(widget.data.image!)),
              SizedBox(
                height: 24,
              ),
              Spacer(
                flex: 1,
              ),
              Column(
                children: [
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    widget.data.text!,
                    style: TextStyle(
                        color: textColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 17),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  SizedBox(
                    height: 40,
                  ),
                ],
              ),

              SmoothPageIndicator(
                  controller: pageController, // PageController
                  count: onBoarding.length,
                  effect: JumpingDotEffect(
                    dotHeight: 13,
                    dotWidth: 13,
                    activeDotColor: Color(0xff95D7FF),
                    dotColor: Color(0xff7466E3),
                  ) // your preferred effect
              ),

              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: widget.data.changeButton!
                    ? Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: ContainerNonColorView(data: 'Skip', onTap: () {
                        pageController.animateToPage(
                          pageChanged = 2,
                          duration: Duration(milliseconds: 250),
                          curve: Curves.bounceInOut,
                        );
                      }, ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: ContainerColorView(
                          data: 'Next', onTap: () {
                        pageController.animateToPage(
                          pageChanged! + 1,
                          duration: Duration(milliseconds: 250),
                          curve: Curves.bounceInOut,
                        );
                      },
                      ),
                    )
                  ],
                )
                    : ContainerColorView(
                  data: 'Lets Get Started',
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => LoginView()),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 40,
              )
            ],
          ),
        ],
      ),
    );
  }
}


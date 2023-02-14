import 'package:flutter/material.dart';
import 'package:my_final_progict/conestant/image.dart';
import 'package:my_final_progict/view/OnBoarding/on_boarding%20_model.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../conestant/conset.dart';
import '../../widget/Container_Button_Color.dart';
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
                  dotHeight:13,
                    dotWidth: 13,
                    activeDotColor: Color(0xff95D7FF),
                    dotColor: Color(0xff7466E3),
                  ) // your preferred effect
                  ),

              const SizedBox(
                height: 40,
              ),
              Expanded(
                  child: widget.data.changeButton!
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 56,
                              width: 140,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(color: Colors.blue),
                              ),
                              child: InkWell(
                                onTap: () {
                                  pageController.animateToPage(
                                    pageChanged = 2,
                                    duration: Duration(milliseconds: 250),
                                    curve: Curves.bounceInOut,
                                  );
                                },
                                child: Center(
                                  child: Text(
                                    'Skip',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xff4838D1)),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            InkWell(
                              onTap: () {
                                pageController.animateToPage(
                                  pageChanged! + 1,
                                  duration: Duration(milliseconds: 250),
                                  curve: Curves.bounceInOut,
                                );
                              },
                              child: Container(
                                height: 56,
                                width: 140,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    gradient: LinearGradient(colors: [
                                      Color(0xff2E91EF),
                                      Color(0xff95D7FF)
                                    ])),
                                child: const Center(
                                    child: Text(
                                  'Next',
                                  style: TextStyle(
                                      color: Color(0xffFFFFFF),
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16),
                                )),
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
                        )),
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

// child: Column(
// mainAxisAlignment: MainAxisAlignment.center,
// children: [
// const SizedBox(
// height: 200,
// ),
// Image.asset(widget.data.image!),
// SizedBox(
// height: 24,
// ),
// Spacer(),
// Column(
// children: [
// SizedBox(
// height: 12,
// ),
// Text(
// widget.data.text!,
// style: TextStyle(
// color: textColor,
// fontWeight: FontWeight.bold,
// fontSize: 17),
// textAlign: TextAlign.center,
// ),
// SizedBox(
// height: 3,
// ),
// SizedBox(
// height: 40,
// ),
// ],
// ),
// Spacer(),
// SmoothPageIndicator(
// controller: pageController, // PageController
// count: onBoarding.length,
// effect: JumpingDotEffect(
// activeDotColor: Color(0xff95D7FF),
// dotColor: Color(0xff7466E3),
// ) // your preferred effect
// ),
// const SizedBox(
// height: 40,
// ),
// Expanded(
// child: widget.data.changeButton!
// ? Row(
// mainAxisAlignment: MainAxisAlignment.center,
// children: [
// Container(
// height: 56,
// width: 140,
// decoration: BoxDecoration(
// color: Colors.white,
// borderRadius: BorderRadius.circular(8),
// border: Border.all(color: Colors.blue),
// ),
// child: InkWell(
// onTap: () {
// pageController.animateToPage(
// pageChanged = 2,
// duration: Duration(milliseconds: 250),
// curve: Curves.bounceInOut,
// );
// },
// child: Center(
// child: Text(
// 'Skip',
// style: TextStyle(
// fontSize: 16,
// fontWeight: FontWeight.w500,
// color: Color(0xff4838D1)),
// ),
// ),
// ),
// ),
// const SizedBox(
// width: 15,
// ),
// InkWell(
// onTap: () {
// pageController.animateToPage(
// pageChanged! + 1,
// duration: Duration(milliseconds: 250),
// curve: Curves.bounceInOut,
// );
// },
// child: Container(
// height: 56,
// width: 140,
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(8),
// gradient: LinearGradient(colors: [
// Color(0xff2E91EF),
// Color(0xff95D7FF)
// ])),
// child: const Center(
// child: Text(
// 'Next',
// style: TextStyle(
// color: Color(0xffFFFFFF),
// fontWeight: FontWeight.w500,
// fontSize: 16),
// )),
// ),
// )
// ],
// )
// : ContainerColorView(
// data: 'Lets Get Started',
// onTap: () {
// Navigator.pushReplacement(
// context,
// MaterialPageRoute(
// builder: (context) => LoginView()),
// );
// },
// )),
// SizedBox(
// height: 40,
// )
// ],
// ),

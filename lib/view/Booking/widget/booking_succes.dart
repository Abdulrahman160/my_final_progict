import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_final_progict/conestant/conset.dart';
import 'package:my_final_progict/view/Welcome.dart';

import '../../../conestant/image.dart';
import '../../../widget/Container_Button_Color.dart';



class BookingSuccess extends StatelessWidget {
  const BookingSuccess({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomSheet(
      onClosing: () {},
      enableDrag: false,
      builder: (context) => Container(
        padding: EdgeInsets.symmetric(
          vertical: 50,
          horizontal: 40,
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(25),
            ),
            color: Colors.red),
        height: 500,
        width: double.infinity,
        child: Column(
          children: [
            AvatarGlow(
              endRadius: 70,
              duration: Duration(milliseconds: 2000),
              animate: true,
              glowColor: kBlue,
              repeatPauseDuration: Duration(milliseconds: 100),
              // repeat: true,
              // showTwoGlows: true,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset(
                    AppImage.blueCircle,
                    height: 80,
                    width: 80,
                    fit: BoxFit.fitWidth,
                  ),
                  Image.asset(AppImage.rightMark),
                ],
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Text(
              "Your transaction is\nsuccess",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: textColor,
                fontSize: 25,
                height: 2,
                fontWeight: FontWeight.w800,
              ),
            ),
            Text(
              "Lorem ipsum dolor sit amet, consectetur.",
              style: TextStyle(
                color: kDarkGray,
                fontSize: 13,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Spacer(),
            ContainerColorView(data: "Go to Home")
          ],
        ),
      ),
    );
  }
}

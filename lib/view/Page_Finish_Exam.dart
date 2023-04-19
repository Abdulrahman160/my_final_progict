import 'package:flutter/material.dart';
import '../conestant/conset.dart';
import '../conestant/image.dart';
import '../widget/Container_Button_Color.dart';
import 'NavBar/nav_bar_view.dart';

class FinishExamView extends StatelessWidget {
  const FinishExamView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
      body: Stack(
        children: [
          Image.asset(
            AppImage.background,
            width: double.infinity,
            fit: BoxFit.fitWidth,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30, bottom: 40),
            child: Column(
              children: [
                SizedBox(
                  height: 260,
                ),
                Center(child: Image.asset(AppImage.finishExam)),
                SizedBox(
                  height: 50,
                ),
                Text(
                  'You are ready to go!',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: textColor),
                ),
                SizedBox(
                  height: 12,
                ),
                Text(
                  ' Congratulation, any interesting topics \n will be shortly in your hands.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: textColor),
                ),
                Spacer(),
                ContainerColorView(
                    data: 'Finish',
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => NavBarView(),
                          ));
                    }),
              ],
            ),
          )
        ],
      ),
    );
  }
}

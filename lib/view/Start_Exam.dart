import 'package:flutter/material.dart';
import '../conestant/conset.dart';
import '../conestant/image.dart';
import '../widget/Container_Button_Color.dart';
import '../widget/Container_Button_nonColor.dart';

class StartExamView extends StatelessWidget {
  const StartExamView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backColor,
      body: Stack(
        children: [
          Image.asset(
            AppImage.background,
            width: double.infinity,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30,right: 30,bottom: 40),
            child: Column(
              children: [
                SizedBox(height: 260,),
                Image.asset(AppImage.startexam),
                SizedBox(
                  height: 50,
                ),
                Text(
                  'You are ready to go to Exam!',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: ContainerNonColorView(
                        data: 'Skip',
                        // onTap: TODO  ,
                      ),
                    ),
                    SizedBox(width: 44,),
                    Expanded(
                      child: ContainerColorView(
                        data: 'GO',
                        // onTap: TODO ,
                      ),
                    ),
                  ],
                )

              ],
            ),
          )
        ],
      ),
    );
  }
}

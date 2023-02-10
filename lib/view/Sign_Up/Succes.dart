import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_final_progict/view/Welcome.dart';

import '../../conset.dart';
import '../../widget/Container_Button_Color.dart';

class SignUpSuccessfully extends StatelessWidget {
  const SignUpSuccessfully({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


   return
     BottomSheet(onClosing: (){},enableDrag: false,
       builder:(context)=> Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),color: backColor),
        height: 500,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 10,
                ),
                Expanded(child: Image.asset("assets/images/success.png",)),
                Text(
                  "Register Successfully",
                  style: TextStyle(
                      color: textColor,
                      fontSize: 17,
                      fontWeight: FontWeight.w600),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Congratulation! your account already created.",
                    style: TextStyle(
                        color: Color(0XFFA7A9B7),
                        fontSize: 10,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Please login to get amazing experience.",
                    style: TextStyle(
                        color: Color(0XFFA7A9B7),
                        fontSize: 10,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                ContainerColorView(data: "Continue",onTap: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => WelcomeView(),));
                },),
              ],
            ),
          ),

    ),
     );
  }
}

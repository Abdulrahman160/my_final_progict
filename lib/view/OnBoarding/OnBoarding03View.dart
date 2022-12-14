import 'package:flutter/material.dart';

import '../../conset.dart';
import '../../widget/Container_Button_Color.dart';
import '../Login.dart';

class OnBoarding03View extends StatelessWidget {
  const OnBoarding03View({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backColor,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/Background (1).png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 200,
            ),
            Image.asset("assets/images/Illustration (2).png"),
            SizedBox(height: 24,),
            Column(
              children:  [
                Text(
                  'Tittle Three',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16,color: textColor),
                ),
                SizedBox(
                  height: 12,
                ),
                Text('Lorem ipsum dolor sit amet la maryame ',style: TextStyle(color: textColor)),
                SizedBox(
                  height: 3,
                ),
                Text('dor sut colondeum.',style: TextStyle(color: textColor)),
                SizedBox(
                  height: 40,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 12,
                  width: 12,
                  decoration: BoxDecoration(
                      color: const Color(0xff7466E3),
                      borderRadius: BorderRadius.circular(40)),
                ),
                const SizedBox(
                  width: 12,
                ),
                Container(
                  height: 12,
                  width: 12,
                  decoration: BoxDecoration(
                      color: const Color(0xff7466E3),
                      borderRadius: BorderRadius.circular(40)),
                ),
                const SizedBox(
                  width: 12,
                ),
                Container(
                  height: 12,
                  width: 12,
                  decoration: BoxDecoration(
                      color: const Color(0xffF77A55),
                      borderRadius: BorderRadius.circular(40)),
                )
              ],
            ),
            const SizedBox(
              height: 40,
            ),

            ContainerColorView(
              data: 'Lets Get Started',
              onTap:() {
                Navigator.pushReplacement(context,MaterialPageRoute(builder:(context) => LoginView()),);

              },
            )

          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:my_final_progict/conestant/conset.dart';
import '../widget/Container_Button_Color.dart';
import 'Personalization.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/background.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 210,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 3.0),
                  child: Text(
                    "Welcome !",
                    style: TextStyle(
                      color: textOrangeColor,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Text(
                    "Let’s Start to Complete Information",
                    style: TextStyle(
                        color: Color(0xFF4838D1),
                        fontSize: 48,
                        fontWeight: FontWeight.w200),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  child: Text(
                    "By personalize your account, we can help you to find what you like.",
                    style: TextStyle(
                      color: textColor,
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
               InkWell(
                 child:  ContainerColorView(
                     data: "Complete Your Account",
                   onTap: () {
                     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => PersonalizationView(),));
                   },
               ),
                ),
                SizedBox(
                  height: 20,
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}

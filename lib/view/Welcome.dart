import 'package:flutter/material.dart';
import 'package:my_final_progict/conset.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Container(
    height: double.infinity,
    width: double.infinity,
    decoration: const BoxDecoration(
      image: DecorationImage(
        image: AssetImage("assets/images/Background (1).png"),
        fit: BoxFit.cover,
      ),
    ),
child: Column(
  children: [
    Text("Welcome !",style: TextStyle(color: textColor,fontSize: 18),)
  ],
),
    ), );
  }
}

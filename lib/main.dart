import 'package:flutter/material.dart';
import 'package:my_final_progict/view/Error.dart';
import 'package:my_final_progict/view/Sign_Up/Confirmation.dart';
import 'package:my_final_progict/view/Splash.dart';
import 'package:my_final_progict/widget/Container_Button_Color.dart';
import 'package:my_final_progict/widget/Container_Button_nonColor.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SignUpConfirmationView(),
    );
  }
}

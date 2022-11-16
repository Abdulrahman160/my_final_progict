import 'package:flutter/material.dart';
import 'package:my_final_progict/view/Email_Send_Password.dart';
import 'package:my_final_progict/view/Welcome.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WelcomeView(),
    );
  }
}

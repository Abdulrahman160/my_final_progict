import 'package:flutter/material.dart';
import 'package:my_final_progict/view/Login.dart';
import 'package:my_final_progict/view/Personalization.dart';
import 'package:my_final_progict/view/Sign_Up/Confirmation.dart';
import 'package:my_final_progict/view/Sign_Up/Succes.dart';


void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: PersonalizationView(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:my_final_progict/view/otp_Page.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:OptView(),
    );
  }
}

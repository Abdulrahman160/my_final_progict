import 'package:flutter/material.dart';
import 'OnBoarding/OnBoarding01View.dart';



void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home:OnBoarding01View(),
    );
  }
}

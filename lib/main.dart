import 'package:flutter/material.dart';
import 'package:my_final_progict/view/Splash.dart';



void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home:SplashView(),
       // theme: theme,
      debugShowCheckedModeBanner:   false,
      title: 'Mentis',


    );
  }
}

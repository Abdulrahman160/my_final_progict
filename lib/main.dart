import 'package:flutter/material.dart';
import 'package:my_final_progict/view/AllTraining/view/all_trainig_view.dart';
import 'package:my_final_progict/view/NavBar/nav_bar_view.dart';



void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: AllTrainingView(),
       // theme: theme,
      debugShowCheckedModeBanner:   false,
      title: 'Mentis',


    );
  }
}

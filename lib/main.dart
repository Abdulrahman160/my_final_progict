import 'package:flutter/material.dart';
import 'package:my_final_progict/view/Finish_Exam.dart';
import 'package:my_final_progict/view/Personal_Information/complete_information.dart';



void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: FinishExamView(),
       // theme: theme,
      debugShowCheckedModeBanner:   false,
      title: 'Mentis',


    );
  }
}

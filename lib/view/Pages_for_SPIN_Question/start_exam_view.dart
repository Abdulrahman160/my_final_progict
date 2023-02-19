import 'package:flutter/material.dart';

class StartExamView extends StatefulWidget {
  const StartExamView({Key? key}) : super(key: key);

  @override
  State<StartExamView> createState() => _StartExamViewState();
}

class _StartExamViewState extends State<StartExamView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: ListView(
        children: [
          Center(
            child: Stack(
              children: [
                Text(
                  ' Please read each statement and \n click in the column that indicates \n how much the statement applied \n to you over the past week.',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 18),
                ),

              ],
            ),
          )
        ],
      ),
    );
  }
}

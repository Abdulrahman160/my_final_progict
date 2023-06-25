import 'dart:math';

import 'package:calendar_agenda/calendar_agenda.dart';
import 'package:flutter/material.dart';

import '../../../conestant/conset.dart';
import '../../../widget/appbar_widget.dart';

class MyDayView extends StatefulWidget {
  const MyDayView({Key? key}) : super(key: key);

  @override
  State<MyDayView> createState() => _MyDayViewState();
}

class _MyDayViewState extends State<MyDayView> {




  @override


  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
      body: Column(
        children: [
          AppBarWidget(title: 'My Day'),

        ],
      )

    );
  }
}

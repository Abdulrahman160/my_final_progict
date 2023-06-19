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
  CalendarAgendaController _calendarAgendaControllerNotAppBar =
      CalendarAgendaController();
  late DateTime _selectedDateNotAppBBar;

  Random random = new Random();

  @override
  void initState() {
    _selectedDateNotAppBBar = DateTime.now();
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
      body: Column(
        children: [
          AppBarWidget(title: 'My Day'),
          // CalendarAgenda(
          //   backgroundColor:Colors.red,fullCalendar: true,fullCalendarScroll: FullCalendarScroll.horizontal,
          //   controller: _calendarAgendaControllerNotAppBar,
          //   locale: 'en',
          //   weekDay: WeekDay.short,
          //   fullCalendarDay: WeekDay.short,
          //   selectedDateColor: kBlue,
          //   dateColor: kShadowGray,
          //   initialDate: DateTime.now(),
          //   firstDate: DateTime.now().subtract(Duration(days: 140)),
          //   lastDate: DateTime.now().add(Duration(days: 100)),
          //   events: List.generate(
          //     100,
          //         (index) => DateTime.now().subtract(
          //       Duration(
          //         days: index * random.nextInt(5),
          //       ),
          //     ),
          //   ),
          //   onDateSelected: (date) {
          //     setState(() {
          //       _selectedDateNotAppBBar = date;
          //     });
          //   },
          // ),
        ],
      )

    );
  }
}

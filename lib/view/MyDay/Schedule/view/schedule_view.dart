import 'dart:math';

import 'package:calendar_agenda/calendar_agenda.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:my_final_progict/conestant/conset.dart';
import 'package:my_final_progict/widget/Container_Button_Color.dart';
import '../../../../widget/appbar_widget.dart';
import '../../../auth/SignUp/succes.dart';

class ScheduleView extends StatefulWidget {
  const ScheduleView({Key? key}) : super(key: key);

  @override
  State<ScheduleView> createState() => _ScheduleViewState();
}

class _ScheduleViewState extends State<ScheduleView> {
  CalendarAgendaController _calendarAgendaControllerNotAppBar =
      CalendarAgendaController();
  late DateTime _selectedDateNotAppBBar;
  Random random = new Random();



  String? date=DateFormat.yMMMEd().format(DateTime.now()) ;
  String? time=TimeOfDay.now() as String? ;


  @override
  void initState() {
    _selectedDateNotAppBBar = DateTime.now();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppBarWidget(
            title: 'Add Schedule',
          ),
          // CalendarAgenda(
          //   backgroundColor: kBlue,
          //   controller: _calendarAgendaControllerNotAppBar,
          //   locale: 'en',
          //   weekDay: WeekDay.short,
          //   fullCalendarDay: WeekDay.short,
          //   selectedDateColor: kBlue,
          //   dateColor: kShadowGray,
          //   initialDate: DateTime.now(),
          //   firstDate: DateTime.now().subtract(Duration(days: 140)),
          //   lastDate: DateTime.now().add(Duration(days: 40)),
          //   events: List.generate(
          //     100,
          //     (index) => DateTime.now().subtract(
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
          InkWell(
            onTap: () async {
              DateTime? newDate = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2100));
              if (newDate == null) return;

              setState(() {
                date = DateFormat.yMMMEd().format(newDate);
                print(date);
              });
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: Row(
                children: [
                  Text(
                    "${date}",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                      color: kShadowGray,
                    ),
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () async {
              TimeOfDay? newTime = await showTimePicker(
                context: context,
                initialTime: TimeOfDay.now()

              );



              setState(() {
                time= DateFormat.jm().format(DateTime.now()) ;
              });
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 30, top: 30),
              child: Row(
                children: [
                  Text(
                    "Time",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: textColor,
                    ),
                  ),
                  // Spacer(
                  //   flex: 1,
                  // ),
                  Text(
                    "${time}",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: textColor,
                    ),
                  ),
                  // Spacer(
                  //   flex: 2,
                  // ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, top: 30),
            child: Text(
              "Details In Day",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: textColor,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 30.0,
              vertical: 20,
            ),
            child: TextField(
              maxLines: 10,
              minLines: 10,
              decoration: InputDecoration(
                hintText: "Write Here",
                hintStyle: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Color(0xffADA4A5),
                ),
                fillColor: kGray,
                filled: true,
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide.none),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide.none),
                errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide.none),
                focusedErrorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide.none),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
          ),
          Spacer(),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: ContainerColorView(
                  data: "Save",
                  onTap: () {
                    showBottomSheet(
                      context: context,
                      elevation: 5,
                      builder: (context) {
                        return SignUpSuccessfully();
                      },
                    );
                  })),
        ],
      ),
    );
  }
}

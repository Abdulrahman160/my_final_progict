// import 'package:flutter/material.dart';
//
// class TestView extends StatelessWidget {
//   const TestView({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Padding(
//           padding:  EdgeInsets.all(50.0),
//           child: TextFormField(
//             decoration:  InputDecoration(contentPadding: EdgeInsets.all(20),
//               hintText: 'email',
//                 filled:true,
//               fillColor:Color(0xffF5F5FA),
//               enabledBorder: OutlineInputBorder(
//                 borderRadius:BorderRadius.circular(10),
//                 borderSide: BorderSide.none
//               ),
//               focusedBorder: OutlineInputBorder(
//                   borderRadius:BorderRadius.circular(25),
//                   borderSide: BorderSide.none
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
// suffixIcon: widget.enableSuffixIcon!
// ? GestureDetector(
// onTap: () {
// setState(() {
// obscureText = !obscureText;
// });
// },
// child: obscureText
// ? Icon(
// Icons.visibility_off,
// color: Colors.grey,
// )
// : Icon(
// Icons.visibility,
// color: containerNonBorderColor1,
// ))
// : Text(""),

//  TextSpan(
// text: 'Single tap',
// style: TextStyle(color: Colors.red[300]),
// recognizer: TapGestureRecognizer()..onTap = () {
// // Single tapped.
// },
// ),

// page Edit Profile Stack for Camera and photo

import 'dart:math';

import 'package:calendar_agenda/calendar_agenda.dart';
import 'package:flutter/material.dart';

class ExamplePage extends StatefulWidget {
  const ExamplePage({Key? key}) : super(key: key);

  @override
  _ExamplePageState createState() => _ExamplePageState();
}

class _ExamplePageState extends State<ExamplePage> {
  CalendarAgendaController _calendarAgendaControllerAppBar =
      CalendarAgendaController();
  CalendarAgendaController _calendarAgendaControllerNotAppBar =
      CalendarAgendaController();

  late DateTime _selectedDateAppBBar;
  late DateTime _selectedDateNotAppBBar;

  Random random = new Random();

  @override
  void initState() {
    super.initState();
    _selectedDateAppBBar = DateTime.now();
    _selectedDateNotAppBBar = DateTime.now();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CalendarAgenda(
        controller: _calendarAgendaControllerAppBar,
        appbar: true,
        selectedDayPosition: SelectedDayPosition.right,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
        weekDay: WeekDay.long,
        fullCalendarScroll: FullCalendarScroll.horizontal,
        fullCalendarDay: WeekDay.long,
        selectedDateColor: Colors.green.shade900,
        locale: 'id',
        initialDate: DateTime.now(),
        calendarEventColor: Colors.green,
        firstDate: DateTime.now().subtract(Duration(days: 140)),
        lastDate: DateTime.now().add(Duration(days: 60)),
        events: List.generate(
            100,
            (index) => DateTime.now()
                .subtract(Duration(days: index * random.nextInt(5)))),
        onDateSelected: (date) {
          setState(() {
            _selectedDateAppBBar = date;
          });
        },
        calendarLogo: Image.network(
          'https://www.kindpng.com/picc/m/355-3557482_flutter-logo-png-transparent-png.png',
          scale: 5.0,
        ),
        selectedDayLogo: NetworkImage(
          'https://www.kindpng.com/picc/m/355-3557482_flutter-logo-png-transparent-png.png',
          scale: 15.0,
        ),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                _calendarAgendaControllerAppBar.goToDay(DateTime.now());
              },
              child: Text("Today, appbar = true"),
            ),
            Text('Selected date is $_selectedDateAppBBar'),
            SizedBox(
              height: 20.0,
            ),
            CalendarAgenda(
              controller: _calendarAgendaControllerNotAppBar,
              leading: SizedBox(
                width: MediaQuery.of(context).size.width * 0.3,
                child: Text(
                  "Agenda anda hari ini adalah sebagai berikut",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              // fullCalendar: false,
              locale: 'en',
              weekDay: WeekDay.long,
              fullCalendarDay: WeekDay.short,
              selectedDateColor: Colors.blue.shade900,
              initialDate: DateTime.now(),
              firstDate: DateTime.now().subtract(Duration(days: 140)),
              lastDate: DateTime.now().add(Duration(days: 4)),
              events: List.generate(
                  100,
                  (index) => DateTime.now()
                      .subtract(Duration(days: index * random.nextInt(5)))),
              onDateSelected: (date) {
                setState(() {
                  _selectedDateNotAppBBar = date;
                });
              },
              calendarLogo: Image.network(
                'https://www.kindpng.com/picc/m/355-3557482_flutter-logo-png-transparent-png.png',
                scale: 5.0,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                _calendarAgendaControllerNotAppBar.goToDay(DateTime.now());
              },
              child: Text("Today, appbar = false (default value)"),
            ),
            Text('Selected date is $_selectedDateNotAppBBar'),
            SizedBox(
              height: 20.0,
            ),
          ],
        ),
      ),
    );
  }
}

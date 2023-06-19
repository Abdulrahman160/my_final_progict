import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:my_final_progict/conestant/conset.dart';
import 'package:my_final_progict/widget/Container_Button_Color.dart';

import '../../../../widget/appbar_widget.dart';
import '../../auth/SignUp/succes.dart';

class ScheduleView extends StatefulWidget {
  const ScheduleView({Key? key}) : super(key: key);

  @override
  State<ScheduleView> createState() => _ScheduleViewState();
}

class _ScheduleViewState extends State<ScheduleView> {
  String? date = DateFormat.yMMMEd().format(DateTime.now());

  TimeOfDay? time = TimeOfDay.now();

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppBarWidget(
              title: 'Add Schedule',
            ),
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
                    context: context, initialTime: TimeOfDay.now());

                setState(() {
                  if (newTime == null) {
                    time = TimeOfDay.now();
                  } else {
                    time = newTime;
                  }
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
                    Spacer(
                      flex: 1,
                    ),
                    Text(
                      "${time?.hour}:${time?.minute} ",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: textColor,
                      ),
                    ),
                    Spacer(
                      flex: 2,
                    ),
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
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.28,
            ),
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
      ),
    );
  }
}

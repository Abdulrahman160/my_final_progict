import 'dart:math';

import 'package:calendar_agenda/calendar_agenda.dart';
import 'package:flutter/material.dart';

import '../../../conestant/conset.dart';
import '../../../conestant/image.dart';
import '../../../payment/paymob.dart';
import '../../../widget/Container_Button_Color.dart';
import '../widget/container_image.dart';
import '../widget/doctor_day.dart';
import '../widget/doctor_time.dart';
import '../widget/text_style.dart';

class DoctorDetailsView extends StatefulWidget {
  const DoctorDetailsView({Key? key, required this.name, required this.image})
      : super(key: key);
  final String name;
  final String image;

  @override
  State<DoctorDetailsView> createState() => _DoctorDetailsViewState();
}

class _DoctorDetailsViewState extends State<DoctorDetailsView> {
  bool forAndroid = false;
  CalendarAgendaController _calendarAgendaControllerNotAppBar =
      CalendarAgendaController();
  late DateTime _selectedDateNotAppBBar;
  Random random = new Random();

  void initState() {
    _selectedDateNotAppBBar = DateTime.now();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
      appBar: AppBar(
        toolbarHeight: 100,
        centerTitle: true,
        title: Text(
          "Doctor Details",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w900,
            color: textColor,
          ),
        ),
        elevation: 0,
        backgroundColor: kTransparent,
        leading: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: CircleAvatar(
            radius: 25,
            backgroundColor: kGray,
            child: IconButton(
              icon: Icon(
                Icons.arrow_back_ios_new,
                color: kBlack,
                size: 15,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 6),
                        child: Text(
                          "Dr. ${widget.name}",
                          style: TextStyle(
                            color: textColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 6),
                        child: Text(
                          "Cardiologist",
                          style: TextStyle(
                            color: doctorDetailsColor,
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 6),
                        child: Text(
                          "A.j. Hospital, DA Washington ",
                          style: TextStyle(
                            color: doctorDetailsColor,
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Text(
                        "Price",
                        style: TextStyle(
                          color: textColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 6),
                        child: Text(
                          "20 Dollar/hour",
                          style: TextStyle(
                            color: textColor.withOpacity(.71),
                            fontSize: 16,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 5.0),
                        child: Text(
                          "About Dr. Samantha",
                          style: TextStyle(
                            color: textColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eu turpis molestie, dictum est a, mattis tellus. Sed dignissim, metus nec fringilla accumsan, risus sem sollicitudin lacus, ut interdum tellus elit sed risus. Maecenas eget condimentum velit, sit amet feugiat lectus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. ",
                        style: TextStyle(
                          color: doctorDetailsColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  right: 5,
                  child: ImageContainer(image: widget.image),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Text(
                "Appointment Schedule",
                style: TextStyle(
                  color: textColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            CalendarAgenda(
              backgroundColor: kWhite,
              fullCalendar: false,
              fullCalendarScroll: FullCalendarScroll.horizontal,
              controller: _calendarAgendaControllerNotAppBar,
              locale: 'en',
              weekDay: WeekDay.short,
              fullCalendarDay: WeekDay.short,
              selectedDateColor: kBlue,
              dateColor: kShadowGray,
              initialDate: DateTime.now(),
              firstDate: DateTime.now().subtract(Duration(days: 140)),
              lastDate: DateTime.now().add(Duration(days: 100)),
              events: List.generate(
                100,
                (index) => DateTime.now().subtract(
                  Duration(
                    days: index * random.nextInt(5),
                  ),
                ),
              ),
              onDateSelected: (date) {
                setState(() {
                  _selectedDateNotAppBBar = date;
                });
              },
            ),
            SizedBox(
              height: 10,
            ),
            //TODO:add doctor day
            GridView.count(
              crossAxisCount: 3,
              children: List.generate(6, (index) {
                return DoctorTimeView();
              }),
              shrinkWrap: true,
              childAspectRatio: 4 / 2,
              mainAxisSpacing: 21,
              crossAxisSpacing: 13,
            ),
            SizedBox(
              height: 25,
            ),
            ContainerColorView(
              data: 'Book Appointment',
              onTap: () async {
                final response = await PaymobUtils.instance.pay(
                  currency: "EGP",
                  amount: "2000",
                );
                print('*' * 20);
                print(response?.id);
                print(response?.success);
                print(response?.message);
              },
            ),
          ],
        ),
      ),
    );
  }
}

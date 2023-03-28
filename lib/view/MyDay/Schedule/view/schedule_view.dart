import 'package:flutter/material.dart';
import 'package:my_final_progict/conestant/conset.dart';
import 'package:my_final_progict/widget/Container_Button_Color.dart';

import '../../../../conestant/image.dart';
import '../../../../widget/appbar_widget.dart';
import '../../../SignUp/succes.dart';





class ScheduleView extends StatefulWidget {
  const ScheduleView({Key? key}) : super(key: key);

  @override
  State<ScheduleView> createState() => _ScheduleViewState();
}

class _ScheduleViewState extends State<ScheduleView> {
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            child: Row(
              children: [
                Image.asset(
                  AppImage.calendar_gray,
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  "Thu, 27 May 2022",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                    color: kShadowGray,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, top: 30),
            child: Text(
              "Time",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: textColor,
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
                    builder: ( context) {
                      return SignUpSuccessfully();
                    },);
                })
          ),
        ],
      ),
    );
  }
}

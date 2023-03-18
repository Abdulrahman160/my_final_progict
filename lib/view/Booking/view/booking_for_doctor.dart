import 'package:flutter/material.dart';

import '../../../conestant/conset.dart';
import '../../../conestant/image.dart';
import '../../../widget/icon_back_view.dart';

class BookingForDoctorView extends StatelessWidget {
  const BookingForDoctorView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
      appBar: AppBar(
        title: Text(
          "Doctor Details",
          style: TextStyle(
            color: kBlack,
            fontSize: 17,
            fontWeight: FontWeight.w500,
          ),
        ),
        toolbarHeight: 100,
        centerTitle: true,
        elevation: 0,
        backgroundColor: kTransparent,
        leading: Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: IconBackView(),

        ),
        leadingWidth: 65,
      ),
    );
  }
}

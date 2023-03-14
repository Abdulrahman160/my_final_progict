import 'package:flutter/material.dart';

import '../../../conestant/conset.dart';
import '../../../conestant/image.dart';

class TrainingDetailsView extends StatelessWidget {
  const TrainingDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: CircleAvatar(
                radius: 23,
                backgroundColor: kGray,
                child: Image.asset(AppImage.upLoad)),
          ),
        ],
        toolbarHeight: 100,
        centerTitle: true,
        elevation: 0,
        backgroundColor: kTransparent,
        leading: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: CircleAvatar(
            radius: 23,
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
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                Image.asset(AppImage.mediumCard),
                Image.asset(AppImage.mediumShadow),
                Positioned(
                  top: 50,left: 30,
                  child: Text(
                    "Social\nAnxiety",
                    style: TextStyle(
                      fontSize: 19,fontWeight: FontWeight.w700,
                      color: kWhite,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:my_final_progict/view/PatientInformation/view.dart';

import '../../../conestant/conset.dart';
import '../../SelectSalary/view.dart';

class SelectLevelView extends StatefulWidget {
  const SelectLevelView({Key? key}) : super(key: key);

  @override
  State<SelectLevelView> createState() => _SelectLevelViewState();
}

class _SelectLevelViewState extends State<SelectLevelView> {
  @override
  Widget build(BuildContext context) {
    return BottomSheet(
      onClosing: () {},
      enableDrag: false,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(25),
        ),
      ),
      builder: (context) => Container(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        height: 500,
        width: double.infinity,
        child: ListView.separated(
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {setState(() {
                level=levels[index];
              });

              Navigator.pop(context);
              },
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                    color: TextFiled, borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 10,
                  ),
                  child: Row(
                    children: [

                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        levels[index] ,
                        style: TextStyle(fontSize: 15),
                      )
                    ],
                  ),
                ),
              ),
            );
          },
          separatorBuilder: (context, index) => SizedBox(
            height: 10,
          ),
          itemCount:levels.length,
        ),
      ),
    );;
  }
}

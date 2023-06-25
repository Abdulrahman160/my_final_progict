import 'package:flutter/material.dart';
import 'package:my_final_progict/conestant/conset.dart';

import '../../PatientInformation/view.dart';
import '../widget/patient_model.dart';

class PeopleView extends StatefulWidget {
  const PeopleView({Key? key}) : super(key: key);

  @override
  State<PeopleView> createState() => _PeopleViewState();
}

class _PeopleViewState extends State<PeopleView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 20,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'People',
                style: TextStyle(
                  color: textColor,
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Icon(
                Icons.search,
                size: 30,
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          GridView.count(
            childAspectRatio: 3 / 4,
            children: List.generate(patientModel.length, (index) {
              return InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            PatientInfoView(image: patientModel[index].image, name: patientModel[index].name,),
                      ));
                },
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 36,
                      backgroundColor: kBlue,
                      child: CircleAvatar(
                        backgroundImage: AssetImage(patientModel[index].image),
                        radius: 33,
                      ),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      patientModel[index].name,
                      style: TextStyle(fontSize: 15),
                    )
                  ],
                ),
              );
            }),
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            crossAxisCount: 4,
            mainAxisSpacing: 30,
            crossAxisSpacing: 10,
          )
        ],
      ),
    );
  }
}

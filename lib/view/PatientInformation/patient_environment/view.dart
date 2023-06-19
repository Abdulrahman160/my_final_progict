import 'package:flutter/material.dart';
import 'package:my_final_progict/conestant/conset.dart';
import 'package:my_final_progict/conestant/image.dart';
import 'package:my_final_progict/view/PatientInformation/patient_environment/widget/environment_type.dart';
import 'package:my_final_progict/view/PatientInformation/patient_environment/widget/slider_view.dart';

import '../../../widget/appbar_widget.dart';

String? environment = 'Environment Selected';

class PatientEnvironmentView extends StatefulWidget {
  const PatientEnvironmentView({Key? key}) : super(key: key);

  @override
  State<PatientEnvironmentView> createState() => _PatientEnvironmentViewState();
}

bool openContainerEnvironment = false;
List typeEnvironment = ['Street', 'Shop', 'School'];
List<Map<String, dynamic>> Sliders = [
  {
    'title': 'Time',
    'divisions': 36,
    'maxRange': '180 Min',
  },
  {
    'title': 'People',
    'divisions': 10,
    'maxRange': '50',
  },
];

class _PatientEnvironmentViewState extends State<PatientEnvironmentView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
      body: ListView(
        children: [
          AppBarWidget(
            title: 'Tiana\'s Environment',
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Environment',
                  style: TextStyle(
                    color: kBlack,
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: kTransparent,
                    border: Border.all(color: kBlue),
                  ),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          openContainerEnvironment
                              ? 'Environment Selected'
                              : environment!,
                          style: TextStyle(
                            color: openContainerEnvironment ? kDarkGray : kBlue,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            openContainerEnvironment =
                                !openContainerEnvironment;
                            setState(() {});
                          },
                          child: Padding(
                            padding: EdgeInsets.only(right: 10),
                            child: Icon(
                              openContainerEnvironment
                                  ? Icons.keyboard_arrow_up
                                  : Icons.keyboard_arrow_down_sharp,
                              size: 30,
                              color: kBlack,
                            ),
                          ),
                        )
                      ]),
                ),
                openContainerEnvironment
                    ? Container(
                        padding: EdgeInsets.all(8),
                        width: double.infinity,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: kBlack.withOpacity(.5), blurRadius: 10)
                            ],
                            color: kWhite,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Colors.grey)),
                        child: ListView.separated(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) => EnvironmentTypeView(
                            types: typeEnvironment[index],

                          ),
                          separatorBuilder: (context, index) => SizedBox(
                            height: 5,
                          ),
                          itemCount: typeEnvironment.length,
                        ),
                      )
                    : SizedBox(),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: ListView.separated(
                    shrinkWrap: true,
                    itemBuilder: (context, index) => SliderView(
                      title: Sliders[index]['title'],
                      divisions: Sliders[index]['divisions'],
                      maxRange: Sliders[index]['maxRange'],
                    ),
                    separatorBuilder: (context, index) => SizedBox(
                      height: 30,
                    ),
                    itemCount: Sliders.length,
                  ),
                ),
              ),
              SizedBox(
                width: 80,
              )
            ],
          )
        ],
      ),
    );
  }
}

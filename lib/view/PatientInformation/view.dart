import 'package:flutter/material.dart';
import 'package:my_final_progict/conestant/conset.dart';
import 'package:my_final_progict/view/PatientInformation/widget/bottom_model.dart';
import 'package:my_final_progict/view/PatientInformation/widget/select_level.dart';

import '../../widget/Container_Button_Color.dart';
import '../../widget/appbar_widget.dart';
import '../Doctors/widget/container_image.dart';
import '../ResultsLesson/view/result_of_lesson.dart';

String level = 'Level';
List levels = [
  'Level 1',
  'Level 2',
  'Level 3',
  'Level 4',
  'Level 5',
];

class PatientInfoView extends StatefulWidget {
  const PatientInfoView({Key? key, required this.image, required this.name}) : super(key: key);
final String image;
final String name;
  @override
  State<PatientInfoView> createState() => _PatientInfoViewState();
}

class _PatientInfoViewState extends State<PatientInfoView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
      body: ListView(
        children: [
          AppBarWidget(
            title: '',
          ),
          SizedBox(
            height: 0,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.centerRight,
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 20, top: 20, bottom: 40),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: TextFiled,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.name,
                            style: TextStyle(
                              color: kBlack,
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 6),
                            child: Text(
                              '22 Years old\nFamale',
                              style: TextStyle(
                                color: doctorDetailsColor,
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Text(
                            '11 Ahmed Maher Apt.#15\nMansoura, CA 94109',
                            style: TextStyle(
                              color: doctorDetailsColor,
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    ImageContainer(image: widget.image,)
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 20,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: TextFiled,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Your score was 32',
                        style: TextStyle(
                          color: doctorDetailsColor,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        'Moderate Social Anxiety',
                        style: TextStyle(
                          color: doctorDetailsColor,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                GridView.count(
                  crossAxisCount: 2,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  childAspectRatio: 2.5 / 1,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 10,
                  children: List.generate(bottomDetails.length, (index) {
                    return Stack(
                      alignment: Alignment.centerRight,
                      children: [
                        ContainerColorView(
                          data:bottomDetails[index].enableArrow? level:bottomDetails[index].text,
                          onTap: () async {
                            bottomDetails[index].enableArrow
                                ? await showModalBottomSheet(
                                    backgroundColor: Colors.transparent,
                                    context: context,
                                    builder: (BuildContext context) {
                                      return SelectLevelView();
                                    },
                                  )
                                : Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          bottomDetails[index].namePage,
                                    ));
                            setState(() {
                              level;
                            });
                          },
                        ),
                        bottomDetails[index].enableArrow
                            ? Padding(
                                padding: EdgeInsets.only(right: 15),
                                child: Icon(
                                  Icons.keyboard_arrow_down,
                                  size: 30,
                                  color: kWhite,
                                ),
                              )
                            : SizedBox(),
                      ],
                    );
                  }),
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

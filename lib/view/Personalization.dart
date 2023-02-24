import 'package:flutter/material.dart';
import 'package:my_final_progict/conestant/conset.dart';
import 'package:my_final_progict/conestant/image.dart';

import '../widget/Container_Button_Color.dart';
import '../widget/Radio_View.dart';
import '../widget/Text_From_Filed.dart';
import 'NavBar/nav_bar_view.dart';
import 'Personal_Information/complete_information.dart';
import 'Splash.dart';

class PersonalizationView extends StatefulWidget {
  const PersonalizationView({Key? key}) : super(key: key);

  @override
  State<PersonalizationView> createState() => _PersonalizationViewState();
}

final formKay = GlobalKey<FormState>();

class _PersonalizationViewState extends State<PersonalizationView> {
  String userType = "";
  final userTypes = ['Doctor', 'Patient', 'Trainer'];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: backColor,
        body: Stack(
          children: [
            Image.asset(
              AppImage.background,
            ),
            Positioned(
                child: Form(
              key: formKay,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 75,
                    ),
                    Center(
                      child: Image.asset(
                        AppImage.personalization,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Complete Your Information",
                      style: TextStyle(
                          color: textColor,
                          fontSize: 22,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 17),
                          child: Text(
                            "Who are you?",
                            style: TextStyle(
                                color: textColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        ...userTypes.map((e) {
                          return CustomRadio(
                            title: e,
                            onChange: (v) => setState(() => userType = e),
                            value: e,
                            groupValue: userType,
                          );
                        }),
                        /*
                            RadioView(
                              title: "Select user Type",
                              textRadio1: "Doctor",
                              textRadio2: "Pation",
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            RadioView(
                              title: "Choose Gender",
                              textRadio1: "Male",
                              textRadio2: "Female",
                            ),
                            */
                      ],
                    ),

                  Spacer(),
                    ContainerColorView(
                      data: "Continue",
                      onTap: () {
                        //TODO: put the condition
                        // if (
                        // formKay.currentState!.validate()
                        //     || userType.isEmpty
                        // ) {
                        //   return print("object");
                        // }

                        if (userType == "Patient") {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => CompleteInformationView(),
                              ));
                        } else if (userType == "Doctor") {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => CompleteInformationView(chooseUser: true),
                              ));
                        }
                      },
                    ),
                    SizedBox(height: 70,),
                  ],
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}

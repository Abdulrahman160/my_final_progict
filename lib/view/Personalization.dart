import 'package:flutter/material.dart';
import 'package:my_final_progict/conset.dart';

import '../widget/Container_Button_Color.dart';
import '../widget/Radio_View.dart';
import '../widget/Text_From_Filed.dart';

class PersonalizationView extends StatefulWidget {
  const PersonalizationView({Key? key}) : super(key: key);

  @override
  State<PersonalizationView> createState() => _PersonalizationViewState();
}

final formKay = GlobalKey<FormState>();
String? phone;
String? date;

class _PersonalizationViewState extends State<PersonalizationView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backColor,
      body: Form(
        key: formKay,
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                "assets/images/Background (1).png",
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: ListView(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 75,
                    ),
                    Center(
                      child: Image.asset(
                        "assets/images/Personalization.png",
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Complete Your Information",
                      style: TextStyle(
                          color: textColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          height: 50,
                          width: 65,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Color(0XFFF5F5FA),
                          ),
                          child: Text(
                            "+20",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 50,
                          width: 220,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Color(0XFFF5F5FA),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: TextFormField(
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.start,
                              decoration: InputDecoration(
                                hintText: "Phone Number",
                                helperStyle: TextStyle(
                                    color: hintTextColor.withOpacity(0.1),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14),
                                border: InputBorder.none,
                              ),
                              onChanged: (value) {
                                phone = value;
                              },
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Phone can be not empty';
                                } else if (value.length < 6) {
                                  return 'Phone must be 10 number';
                                } else {
                                  return null;
                                }
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 12,
                    ),
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
                    SizedBox(
                      height: 12,
                    ),
                    ContainerView(
                      icon: null,
                      keyboardType: TextInputType.datetime,
                      onchange: (value) {
                        date = value;
                      },
                      text: "Data of  Brith",
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Phone can be not empty';
                        } else {
                          return null;
                        }
                      },
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    ContainerColorView(
                      data: "Continue",
                      onTap: () {
                        //TODO: put the condition
                        if (formKay.currentState!.validate()) {
                          return;
                        }
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

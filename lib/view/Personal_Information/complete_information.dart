import 'package:flutter/material.dart';
import 'package:my_final_progict/conestant/image.dart';
import '../../widget/Widget_Open_Camera.dart';
import '../Upload_Photo_Card.dart';
import '../../conestant/conset.dart';
import '../../widget/Container_Button_Color.dart';
import '../../widget/Radio_View.dart';
import '../Page_Start_Exam.dart';
import 'birth_date.dart';
import '../../widget/Text_From_Filed.dart';

class CompleteInformationView extends StatefulWidget {
  const CompleteInformationView({
    Key? key,
    this.chooseUser = false,
  }) : super(key: key);

  final bool chooseUser;

  @override
  State<CompleteInformationView> createState() =>
      _CompleteInformationViewState();
}

String userGender = '';
final userGenders = ['Male', 'Female'];
String choose = '';
final chooses = ['Yes', 'No'];

class _CompleteInformationViewState extends State<CompleteInformationView> {
  String? name;
  String? address;
  String? headline;
  DateTime? date;
  final formKay = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kWhite,
        body: ListView(
          children: [
            Stack(
              children: [
                Image.asset(
                  AppImage.background,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Form(
                  key: formKay,
                  child: SingleChildScrollView(
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 30, right: 30, top: 51),
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Let’s Complele \n Information',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 30),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          OpenCameraView(),
                          SizedBox(
                            height: 10,
                          ),
                          TextFormFieldView(
                            number: 1,
                            text: 'Full Name',
                            keyboardType: TextInputType.text,
                            onchange: (String value) {
                              value = name!;
                            },
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Full Name can be not empty';
                              } else
                                return null;
                            },
                            onSaved: (val) {},
                          ),
                          BirthDateView(
                            text: 'Data of Birth',
                            Onchage: (dynamic value) {
                              value = date;
                              (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Date can be not empty';
                                } else
                                  return null;
                              };
                            },
                          ),
                          Container(
                            height: 85,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: TextFiled,
                                borderRadius: BorderRadius.circular(8)),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      right: 120, top: 16),
                                  child: Text(
                                    'Choose your Gender',
                                    style: TextStyle(
                                        color: GrayText,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    ...userGenders.map((e) {
                                      return CustomRadio(
                                        title: e,
                                        onChange: (v) =>
                                            setState(() => userGender = e),
                                        value: e,
                                        groupValue: userGender,
                                      );
                                    }),
                                  ],
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          TextFormFieldView(
                            number: 1,
                            text: 'Address',
                            keyboardType: TextInputType.text,
                            onchange: (String value) {
                              value = address!;
                            },
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'address can be not empty';
                              } else
                                return null;
                            },
                            onSaved: (val) {},
                          ),
                          widget.chooseUser
                              ? TextFormFieldView(
                                  number: 1,
                                  text: 'Headline',
                                  keyboardType: TextInputType.text,
                                  onchange: (String value) {
                                    value = headline!;
                                  },
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Headline can be not empty';
                                    } else
                                      return null;
                                  },
                                  onSaved: (val) {},
                                )
                              : Container(
                                  height: 85,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      color: TextFiled,
                                      borderRadius: BorderRadius.circular(8)),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 1, top: 16),
                                        child: Text(
                                          'Are you following up with a doctor?',
                                          style: TextStyle(
                                              color: GrayText,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 14),
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          ...chooses.map((e) {
                                            return CustomRadio(
                                              title: e,
                                              onChange: (v) =>
                                                  setState(() => choose = e),
                                              value: e,
                                              groupValue: choose,
                                            );
                                          }),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                          SizedBox(
                            height: 42,
                          ),
                          ContainerColorView(
                            data: 'Continue',
                            onTap: () {
                              if (formKay.currentState!.validate()) {
                                widget.chooseUser
                                    ? Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                UploadCardView()))
                                    : Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                PageStartExamView()),
                                      );
                              } else {
                                return;
                              }
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ));
  }


}

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:my_final_progict/conestant/image.dart';
import '../../conestant/conset.dart';
import '../../widget/Container_Button_Color.dart';
import 'birth_date.dart';
import '../../widget/Text_From_Filed.dart';
import 'container_choose.dart';

class CompleteInformationView extends StatefulWidget {
  const CompleteInformationView({Key? key, }) : super(key: key);


  @override
  State<CompleteInformationView> createState() =>
      _CompleteInformationViewState();
}

class _CompleteInformationViewState extends State<CompleteInformationView> {
  File? imageFile;
  String? name;
  String? address;
  DateTime? date;
  final formKay = GlobalKey<FormState>();

  @override

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backColor,
        body: ListView(
          children: [
            Stack(
              children: [
                Image.asset(
                  AppImage.background,
                  width: double.infinity,
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
                          InkWell(
                              onTap: () {
                                showModalBottomSheet(
                                    backgroundColor: Colors.transparent,
                                    context: context,
                                    builder: (BuildContext context) {
                                      return BottomSheet(
                                        onClosing: () {},
                                        enableDrag: true,
                                        builder: (context) => Container(
                                            margin: EdgeInsets.symmetric(
                                                horizontal: 50),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(50),
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                ElevatedButton(
                                                    onPressed: () => getImage(
                                                        source:
                                                            ImageSource.camera),
                                                    child: Icon(
                                                      Icons.camera_alt_outlined,
                                                      size: 30,
                                                    )),
                                                ElevatedButton(
                                                  onPressed: () => getImage(
                                                      source:
                                                          ImageSource.gallery),
                                                  child: Icon(
                                                    Icons.photo_library,
                                                    size: 30,
                                                  ),
                                                ),
                                              ],
                                            )),
                                      );
                                    });
                              },
                              child: imageFile != null
                                  ? Container(
                                      height: 100,
                                      width: 100,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: FileImage(imageFile!)),
                                          borderRadius:
                                              BorderRadius.circular(50)),
                                    )
                                  : Container(
                                      height: 100,
                                      width: 100,
                                      decoration: BoxDecoration(
                                          color:TextFiled,
                                          borderRadius:
                                              BorderRadius.circular(50)),
                                      child: Center(
                                          child: Icon(
                                        Icons.camera_alt_rounded,
                                      )))),
                          SizedBox(
                            height: 10,
                          ),
                          TextFormFieldView(
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
                              }),
                          BirthDateView(
                            text: 'Data of Birth',
                            Onchage: (dynamic value){
                              value = date;
                              (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Date can be not empty';
                                } else
                                  return null;
                              };
                            },
                          ),
                          ContainerChooseView(
                            question: 'Choose your Gender',
                          ),
                          SizedBox(height: 16,),
                          TextFormFieldView(
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
                              }
                          ),
                          ContainerChooseView(
                            question: 'Are you following up with a doctor?',
                          ),
                          SizedBox(height: 16,),
                          ContainerColorView(
                            data: 'Continue',
                            onTap: (){},
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

  void getImage({required ImageSource source}) async {
    final file = await ImagePicker().pickImage(source: source);
    if (file?.path != null) {
      setState(() {
        imageFile = File(file!.path);
      });
    }
  }
}

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:my_final_progict/view/ProfilePage/sections_edit_profile.dart';
import 'package:my_final_progict/view/ProfilePage/setting_profile.dart';

import '../../conestant/conset.dart';
import '../../conestant/image.dart';
import '../../main.dart';
import '../../widget/Container_Button_Color.dart';
import '../../widget/icon_back_view.dart';
import '../Personal_Information/birth_date.dart';
import '../Personalization.dart';
import 'Widget/bottomSheet.dart';

class EditProfileView extends StatefulWidget {
  const EditProfileView({Key? key}) : super(key: key);

  @override
  State<EditProfileView> createState() => _EditProfileViewState();
}

class _EditProfileViewState extends State<EditProfileView> {
  File? imageFile;
  String? name;
  String? address;
  String? headline;
  TextEditingController? birthday_cont = TextEditingController();
  TextEditingController? name_cont = TextEditingController();
  TextEditingController? address_cont = TextEditingController();
  TextEditingController? headline_cont = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
      body: Form(
         key: formKay,
          child: ListView(
        children: [
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              children: [
                IconBackView(),
                SizedBox(
                  width: 100,
                ),
                Text('My Profile',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.black))
              ],
            ),
          ),
          SizedBox(
            height: 50,
          ),
          InkWell(
            onTap: () {
              showModalBottomSheet(
                  backgroundColor: Colors.transparent,
                  context: context,
                  builder: (BuildContext context) {
                    return BottomSheet(
                      onClosing: () {},
                      enableDrag: false,
                      shape: RoundedRectangleBorder(
                          borderRadius:
                          BorderRadius.vertical(top: Radius.circular(25))),
                      builder: (context) => Container(
                          height: 100,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              InkWell(
                                  onTap: () =>
                                      getImage(source: ImageSource.camera),
                                  child: Icon(
                                    Icons.camera_alt_outlined,
                                    color: Colors.blue,
                                    size: 45,
                                  )),
                              InkWell(
                                onTap: () =>
                                    getImage(source: ImageSource.gallery),
                                child: Icon(
                                  Icons.photo_library,
                                  color: Colors.blue,
                                  size: 45,
                                ),
                              ),
                            ],
                          )),
                    );
                  });
            },
            child: Center(
              child: imageFile != null
                  ? Stack(children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: FileImage(imageFile!),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(50)),
                  // child: Image.asset(AppImage.person),
                ),
                Positioned(
                  height: 32,
                  width: 32,
                  bottom: 0,
                  right: 0,
                  child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.blue),
                      child: Icon(
                        Icons.linked_camera_outlined,
                        color: Colors.white,
                      )),
                )
              ])
                  : Stack(children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50)),
                  child: Image.asset(AppImage.person),
                ),
                Positioned(
                  height: 32,
                  width: 32,
                  bottom: 0,
                  right: 0,
                  child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.blue),
                      child: Icon(
                        Icons.linked_camera_outlined,
                        color: Colors.white,
                      )),
                )
              ]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 32,
                ),
                SessionEditProfile(
                  controller: name_cont,
                  title: 'Full Name',
                  hintText: 'Name',
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Name can be not empty';
                    } else {
                      return null;
                    }
                  },
                  onchange: (value) {
                    name = value;
                  },
                ),
                SessionEditProfile(
                  controller: address_cont,
                  title: 'Address',
                  hintText: 'Address',
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Address can be not empty';
                    } else {
                      return null;
                    }
                  },
                  onchange: (value) {
                    address = value;
                  },
                  numLine: 5,
                ),
                users == 'Doctor'
                    ? SessionEditProfile(
                  controller: headline_cont,
                  title: 'Headline',
                  hintText: 'Headline',
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Headline can be not empty';
                    } else {
                      return null;
                    }
                  },
                  onchange: (value) {
                    headline = value;
                  },
                  numLine: 5,
                )
                    : SizedBox(),
                SessionEditProfile(
                    controller: birthday_cont,
                    title: 'Birthday',
                    hintText: 'Data of Birth',
                    onchange: (value) {
                          (dynamic value) {
                            (value) {
                          if (value == null || value.isEmpty) {
                            return 'Date can be not empty';
                          } else
                            return null;
                        };
                      };
                    },
                    onTap: () async {
                      DateTime? pickDate = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(2000),
                          lastDate: DateTime(2101));
                      if (pickDate != null) {
                        setState(() {
                          birthday_cont!.text =
                              DateFormat('yyyy-MM-dd').format(pickDate);
                        });
                      }
                      ;
                    }),
                SizedBox(
                  height: 120,
                ),
                ContainerColorView(
                  data: 'Save Change',
                  onTap: () {
                    if (formKay.currentState!.validate())
                      {
                        showModalBottomSheet(
                            backgroundColor: Colors.transparent,
                            context: context,
                            builder: (BuildContext context) {
                              return BottomSheetView(
                                onTapContainerColor: () {
                                  //  TODO  onTap for save
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => SettingView(
                                            name: name_cont!.text,
                                            address: address_cont!.text,
                                            birthday: birthday_cont!.text,
                                            headline: headline_cont!.text),
                                      ));
                                },
                                title: 'Undo Changes ?',
                                hint:
                                'Are you sure you want to change what\n you entered?',
                                nameColor: 'Save',
                                nameNonColor: 'Cancel',
                              );
                            });
                      }

                  },
                ),
                SizedBox(
                  height: 25,
                )
              ],
            ),
          )
        ],
      )),
    );
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

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import '../../conestant/conset.dart';
import '../../conestant/image.dart';
import '../../widget/Container_Button_Color.dart';
import '../../widget/Text_From_Filed.dart';
import '../../widget/icon_back_view.dart';
import '../Personal_Information/birth_date.dart';
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
  DateTime? date;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: AppBar(
            backgroundColor: backColor,
            elevation: 0.0,
            centerTitle: true,
            title: Padding(
              padding: const EdgeInsets.only(top: 6.0),
              child: Row(
                children: [
                  IconBackView(),
                  SizedBox(
                    width: 100,
                  ),
                  Text(
                    'My Profile',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                ],
              ),
            )),
      ),
      backgroundColor: backColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: ListView(
          children: [
            SizedBox(
              height: 50,
            ),
            InkWell(
              onTap: () {
                showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return BottomSheet(
                        onClosing: () {},
                        enableDrag: false,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(
                                top: Radius.circular(25))),
                        builder: (context) => Container(
                            height: 50,
                            child: Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceAround,
                              children: [
                                InkWell(
                                    onTap: () => getImage(
                                        source:
                                        ImageSource.camera),
                                    child: Icon(
                                      Icons.camera_alt_outlined,
                                      color: Colors.blue,
                                      size: 40,
                                    )),
                                InkWell(
                                  onTap: () => getImage(
                                      source:
                                      ImageSource.gallery),
                                  child: Icon(
                                    Icons.photo_library,
                                    color: Colors.blue,
                                    size: 40,
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
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 32,
                ),
                Text(
                  'Full Name',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormFieldView(
                  keyboardType: TextInputType.text,
                  text: 'Name',
                  onchange: (String value) {
                    value = name!;
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Name can be not empty';
                    } else {
                      return null;
                    }
                  },
                  onSaved: (val) {},
                  number: 1,
                ),
                Text(
                  'Address ',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormFieldView(
                  keyboardType: TextInputType.text,
                  text: 'Address',
                  onchange: (String value) {
                    value = address!;
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Address can be not empty';
                    } else {
                      return null;
                    }
                  },
                  onSaved: (val) {},
                  number: 5,
                ),
                Text(
                  'Birthday ',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                ),
                SizedBox(
                  height: 10,
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
                SizedBox(
                  height: 84,
                ),
                ContainerColorView(
                  data: 'Save Change',
                  onTap: () {
                    showModalBottomSheet(
                        backgroundColor: Colors.transparent,
                        context: context,
                        builder: (BuildContext context) {
                          return BottomSheetView(
                            title: 'Undo Changes ?',
                            hint: 'Are you sure you want to change what\n you entered?',
                            nameColor: 'Save',
                            nameNonColor: 'Cancel',
                          );
                        });
                  },
                )
              ],
            )
          ],
        ),
      ),
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

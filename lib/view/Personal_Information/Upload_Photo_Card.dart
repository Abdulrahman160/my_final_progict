import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:my_final_progict/main.dart';
import 'package:my_final_progict/view/NavBar/nav_bar_view.dart';
import 'package:my_final_progict/view/Personal_Information/cubit.dart';
import 'package:my_final_progict/view/Personal_Information/states.dart';
import 'package:my_final_progict/view/Personal_Information/user_model.dart';
import 'package:my_final_progict/widget/Container_Button_Color.dart';
import 'package:my_final_progict/widget/Spareator_Between.dart';
import 'package:path/path.dart';
import '../../conestant/conset.dart';
import '../../conestant/image.dart';
import 'package:firebase_storage/firebase_storage.dart';

import '../../widget/OpenCamera/Widget_Open_Camera.dart';

class UploadCardView extends StatefulWidget {
  const UploadCardView({Key? key}) : super(key: key);

  @override
  State<UploadCardView> createState() => _UploadCardViewState();
}

class _UploadCardViewState extends State<UploadCardView> {
  File? userImgFile;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
      body: BlocProvider(
        create: (context) => CompleteInfoCubit(),
        child: BlocConsumer<CompleteInfoCubit, CompleteInfoStates>(
          listener: (context, state) {},
          builder: (context, state) {
            return Stack(
              children: [
                Image.asset(
                  AppImage.background,
                  width: double.infinity,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  child: Column(
                    children: [
                      Text(
                        'Upload a photo of\nyour ID Card',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 160,
                      ),
                      InkWell(
                          onTap: () => getImage(source: ImageSource.gallery),
                          child: userImgFile != null
                              ? Container(
                                  height: 175,
                                  width: 312,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: FileImage(userImgFile!)),
                                      color: TextFiled,
                                      borderRadius: BorderRadius.circular(15)),
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 70,
                                      ),
                                    ],
                                  ),
                                )
                              : Container(
                                  height: 175,
                                  width: 312,
                                  decoration: BoxDecoration(
                                      color: TextFiled,
                                      borderRadius: BorderRadius.circular(15)),
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 70,
                                      ),
                                      Icon(
                                        Icons.photo_camera_back,
                                        color: GrayText,
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        'Select Photo',
                                        style: TextStyle(
                                            color: GrayText,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 14),
                                      )
                                    ],
                                  ),
                                )),
                      SizedBox(
                        height: 33,
                      ),
                      SpearatorView(),
                      SizedBox(
                        height: 25,
                      ),
                      InkWell(
                        onTap: () => getImage(source: ImageSource.camera),
                        child: Container(
                          height: 53,
                          decoration: BoxDecoration(
                              color: TextFiled,
                              borderRadius: BorderRadius.circular(15)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 70,
                              ),
                              Icon(
                                Icons.camera_alt_outlined,
                                color: GrayText,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'Open Camera & Take Photo',
                                style: TextStyle(
                                    color: GrayText,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 170,
                      ),
                      ContainerColorView(
                          data: 'Continue',
                          onTap: () async {
                            String imgUrlCard = await UploadCardToStorage();
                            FirebaseFirestore.instance
                                .collection('Doctor')
                                .doc(userIdNumber)
                                .set({'card': imgUrlCard},
                                    SetOptions(merge: true));
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => NavBarView(),
                                ));
                          })
                    ],
                  ),
                )
              ],
            );
          },
        ),
      ),
    );
  }

  void getImage({required ImageSource source}) async {
    final file = await ImagePicker().pickImage(source: source);
    if (file?.path != null) {
      setState(() {
        userImgFile = File(file!.path);
      });
    }
  }

  Future<String> UploadCardToStorage() async {
    Reference imageRef =
        FirebaseStorage.instance.ref(basename(userImgFile!.path));
    await imageRef.putFile(userImgFile!);
    return await imageRef.getDownloadURL();
  }
}

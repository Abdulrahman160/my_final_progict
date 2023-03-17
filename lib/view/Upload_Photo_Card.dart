import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:my_final_progict/widget/Container_Button_Color.dart';
import 'package:my_final_progict/widget/Spareator_Between.dart';
import '../conestant/conset.dart';
import '../conestant/image.dart';

class UploadCardView extends StatefulWidget {
  const UploadCardView({Key? key}) : super(key: key);

  @override
  State<UploadCardView> createState() => _UploadCardViewState();
}

class _UploadCardViewState extends State<UploadCardView> {
  File? imageFile;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backColor,
      body: Stack(
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
                  style:
                  TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 160,
                ),
                InkWell(
                  onTap: ()=> getImage(
                      source: ImageSource.gallery),
                  child:
                  imageFile != null ?
                  Container(
                    height: 175,
                    width: 312,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: FileImage(imageFile!)),
                        color: TextFiled,
                        borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 70,
                        ),
                      ],
                    ),
                  ) : Container(
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
                  )
                ),
                SizedBox(height: 33,),
                SpearatorView(),
                SizedBox(height: 25,),
                InkWell(
                  onTap: ()=> getImage(source: ImageSource.camera),
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
                 SizedBox(height: 170,),
                ContainerColorView(
                   data: 'Continue'
                )
              ],
            ),
          )
        ],
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

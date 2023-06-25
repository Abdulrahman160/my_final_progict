import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import  'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart';
import '../../conestant/conset.dart';
File? imageFile;

class OpenCameraView extends StatefulWidget {
  const OpenCameraView({Key? key}) : super(key: key);

  @override
  State<OpenCameraView> createState() => _OpenCameraViewState();
}
class _OpenCameraViewState extends State<OpenCameraView> {
  @override

  Widget build(BuildContext context) {
    return InkWell(
              onTap: () {
                showModalBottomSheet(
                    backgroundColor: Colors.transparent,
                    context: context,
                    builder: (BuildContext context) {
                      return BottomSheet(
                        onClosing: () {},
                        enableDrag: false,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(
                                top: Radius.circular(25))),
                        builder: (context) => Container(
                            height: 100,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                InkWell(
                                    onTap: () {
                                       getImage(source: ImageSource.camera);
                                    },
                                    child: Icon(
                                      Icons.camera_alt_outlined,
                                      color: Colors.blue,
                                      size: 45,
                                    )),
                                InkWell(
                                  onTap: () {
                              getImage(source: ImageSource.gallery);
                                  },
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
              child: imageFile != null
                  ? Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: FileImage(
                                  imageFile!),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(50)),
                    )
                  : Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          color: TextFiled,
                          borderRadius: BorderRadius.circular(50)),
                      child: Center(
                          child: Icon(
                        Icons.camera_alt_rounded,
                      ))));



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

Future<String> UploadImageToStorage(File? image) async {
  Reference imageRef = FirebaseStorage.instance.ref(basename(image!.path));
  await imageRef.putFile(image);
  print('ImagePath:${image!.path}-----------------------------------------------');
  return await imageRef.getDownloadURL();
}

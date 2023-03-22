import 'package:flutter/material.dart';

import '../../conestant/conset.dart';
import '../../widget/Container_Button_Color.dart';
import '../../widget/Text_From_Filed.dart';
import '../../widget/icon_back_view.dart';
import 'Widget/bottomSheet.dart';

class PageUpdatePasswordView extends StatefulWidget {
  const PageUpdatePasswordView({Key? key}) : super(key: key);

  @override
  State<PageUpdatePasswordView> createState() => _PageUpdatePasswordViewState();
}

class _PageUpdatePasswordViewState extends State<PageUpdatePasswordView> {

  String? oldPassword;
  String? newPassword;
  String? confirmNewPassword;

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
                    width: 60,
                  ),
                  Text(
                    'Update Password',
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 31,),
              Text(
                'Old Password',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
              SizedBox(height: 10,),
              TextFormFieldView(
                number: 1,
                secure: true,
                keyboardType: TextInputType.emailAddress,
                text: 'Old Password',
                onchange: (String value) {
                  oldPassword = value;
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Password can be not empty';
                  } else if (value.length < 6) {
                    return 'password must at lest 6 character';
                  } else {
                    return null;
                  }
                },
                onSaved: (val) {
                  oldPassword = val;
                },
              ),
              Text(
                'New Password',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
              SizedBox(height: 10,),
              TextFormFieldView(
                number: 1,
                secure: true,
                keyboardType: TextInputType.emailAddress,
                text: 'New Password',
                onchange: (String value) {
                  newPassword = value;
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Confirm Password can be not empty';
                  // }TODO Hassan edit of condition else if (value != oldPassword) {
                  //   return "Confirm Password Is Not Equal Password";
                  } else
                        () {
                      return;
                    };
                },
                onSaved: (val) {
                  newPassword = val;
                },
              ),
              Text(
                'Confirm Password',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
              SizedBox(height: 10,),
              TextFormFieldView(
                number: 1,
                secure: true,
                keyboardType: TextInputType.emailAddress,
                text: 'Confirm Password',
                onchange: (String value) {
                  confirmNewPassword = value;
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Confirm Password can be not empty';
                  } else if (value != newPassword) {
                    return "Confirm Password Is Not Equal Password";
                  } else
                        () {
                      return;
                    };
                },
                onSaved: (val) {
                  confirmNewPassword = val;
                },
              ),
              SizedBox(height: 310,),
              ContainerColorView(
                data: 'Update',
                onTap: (){
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
          ),
        ),
      ),
    );
  }
}

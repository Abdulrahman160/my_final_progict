import 'package:flutter/material.dart';

import '../../conset.dart';
import '../../conset.dart';
import '../../widget/Container_Button_Color.dart';
import '../../widget/Container_Button_nonColor.dart';
import '../../widget/Text_From_Filed.dart';
import '../../widget/cusstom_password_field.dart';
import '../Login.dart';
import 'Confirmation.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({Key? key}) : super(key: key);

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  final formKay = GlobalKey<FormState>();
  String? email;
  String? password;
  String? name;
  String? ConfirmPassword;
  TextEditingController passwordController =TextEditingController();




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backColor,
      body: ListView(
        children: [
          Form(
            key: formKay,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 60,
                ),
                Container(
                  height: 120,
                  width: 120,
                  child: Image.asset("assets/images/Logo.png"),
                ),
                SizedBox(
                  height: 24,
                ),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 65),
                  child: Row(
                    children:  [
                      Text(
                        'Register',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600,color: textColor),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                ContainerView(
                  keyboardType: TextInputType.emailAddress,
                  text: 'Name',
                  onchange: (String value) {
                    name = value;
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Email can be not empty";
                    } else {
                    }
                  },
                ),
                SizedBox(
                  height: 16,
                ),
                ContainerView(
                  keyboardType: TextInputType.emailAddress,
                  text: 'Email',
                  onchange: (String value) {
                    email = value;
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Email can be not empty';
                    } else if (!value.contains('@gmail.com')) {
                      return 'Email must contain @gmail.com';
                    } else {
                      return null;
                    }
                  },
                ),
                SizedBox(
                  height: 16,
                ),
                PasswordTextField(
                  keyboardType: TextInputType.emailAddress,
                  text: 'Password',
                  onchange: (String value) {
                    password = value;
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
                ),
                SizedBox(
                  height: 16,
                ),
                PasswordTextField(
                // controller: null,
                 keyboardType: TextInputType.emailAddress,
                  text: 'Confirm Password',
                  onchange: (String value) {
                    ConfirmPassword = value;
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Confirm Password can be not empty';
                    }
                    else  if (value != password) {
                      return "Confirm Password Is Not Equal Password";
                    }
                     else (){
                      return ;
                    };
                  },
                ),
                SizedBox(
                  height: 24,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:  [
                    Text(
                      'By signing up, you agree to our',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Terms',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: textOrangeColor),
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Text(
                      ',',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 68),
                  child: Row(
                    children:  [
                      Text(
                        'Data policy',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: textOrangeColor),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'and',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      Text(
                        'Cookies Policy.',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: textOrangeColor),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                ContainerColorView(
                  data: 'Register',
                  onTap: () {
                    if (formKay.currentState!.validate()) {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SignUpConfirmationView()));
                    }else{
                    return;}
                  },
                ),
                SizedBox(
                  height: 24,
                ),
                ContainerNonColorView(
                  data: 'Cancel',
                  onTap: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginView()));
                  },
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}


//
// TextSpan(
// text: 'Single tap',
// style: TextStyle(color: Colors.red[300]),
// recognizer: TapGestureRecognizer()..onTap = () {
// // Single tapped.
// },
// ),


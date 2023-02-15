import 'package:flutter/material.dart';

import '../../conestant/conset.dart';
import '../../conestant/image.dart';
import '../../widget/Container_Button_Color.dart';
import '../../widget/Container_Button_nonColor.dart';
import '../../widget/Text_From_Filed.dart';
import '../Login.dart';
import 'confirmation.dart';

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
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Form(
          key: formKay,
          child: SingleChildScrollView(
            child:
              Column(
                children: [
                  SizedBox(
                    height: 60,
                  ),
                  Container(
                    height: 120,
                    width: 120,
                    child: Image.asset(AppImage.logo),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Register',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: textColor),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),

                  textFormField(
                    keyboardType: TextInputType.emailAddress,
                    text: 'Email / Phone Number',
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


                  textFormField(
                    secure: true,
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

                  textFormField(
                    secure: true,

                    // controller: null,
                    keyboardType: TextInputType.emailAddress,
                    text: 'Confirm Password',
                    onchange: (String value) {
                      ConfirmPassword = value;
                    },
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Confirm Password can be not empty';
                      } else if (value != password) {
                        return "Confirm Password Is Not Equal Password";
                      } else
                        () {
                          return;
                        };
                    },
                  ),
                  SizedBox(height: 14,),
                  RichText(
                    text: TextSpan(
                        text: "By signing up, you agree to our ",
                        style: TextStyle(fontSize: 16, color: Colors.black),
                        children: [
                          TextSpan(
                              text: "Terms",
                              style: TextStyle(color: textOrangeColor)),
                          TextSpan(
                            text: ",\n",
                          ),
                          TextSpan(
                            text: "Data policy ",
                            style: TextStyle(color: textOrangeColor),
                          ),
                          TextSpan(
                            text: "and ",
                          ),
                          TextSpan(
                            text: "Cookies Policy",
                            style: TextStyle(color: textOrangeColor),
                          ),
                          TextSpan(
                            text: " .",
                          ),
                        ]),
                  ),

                  SizedBox(
                    height: 24,
                  ),
                  ContainerColorView(
                    data: 'Register',
                    onTap: () {
                      if (formKay.currentState!.validate()) {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignUpConfirmationView(controlacsses: true,)),
                        );
                      } else {
                        return;
                      }
                    },
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  ContainerNonColorView(
                    data: 'Cancel',
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => LoginView()),
                      );
                    },
                  )
                ],
              ),
          ),
        ),
      ),
    );
  }
}


import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:firebase_auth/firebase_auth.dart';
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
  GlobalKey<FormState> formKay = GlobalKey<FormState>();
  String? email;
  String? password;
  String? name;
  String? confirmPassword;
  TextEditingController passwordController = TextEditingController();

  singUp() async {
    var formData = formKay.currentState!;

    if (formData.validate()) {
      formData.save();
      try {
        UserCredential userCredential =
            await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: email!,
          password: password!,
        );
        return userCredential;
      } on FirebaseAuthException catch (e) {
        if (e.code == 'weak-password') {
          AwesomeDialog(
              context: context,
              title: "Error",
              body: Text("password is to week"))
            ..show();
          print('The password provided is too weak.');
        } else if (e.code == 'email-already-in-use') {
          AwesomeDialog(
              context: context,
              title: "Error",
              body: Text("The account already exists for that email."))
            ..show();

          print('The account already exists for that email.');
        }
      } catch (e) {
        print(e);
      }
    } else {
      return;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: backColor,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Form(
            key: formKay,
            child: SingleChildScrollView(
              child: Column(
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
                  TextFormFieldView(
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
                    onSaved: (val) {
                      email = val;
                    },
                  ),
                  TextFormFieldView(
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
                    onSaved: (val) {
                      password = val;
                    },
                  ),
                  TextFormFieldView(
                    secure: true,
                    keyboardType: TextInputType.emailAddress,
                    text: 'Confirm Password',
                    onchange: (String value) {
                      confirmPassword = value;
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
                    onSaved: (val) {
                      confirmPassword = val;
                    },
                  ),
                  SizedBox(
                    height: 14,
                  ),
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
                    onTap: () async {
                      UserCredential response = await singUp();
                      print("=======================================");
                      if (response != null) {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignUpConfirmationView(
                                      controlacsses: true,
                                    )));
                      } else {
                        print("Sign Up faild");
                      }
                      ;
                      print("=======================================");
                    },
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  ContainerNonColorView(
                    data: 'Cancel',
                    onTap: () {
                      Navigator.push(
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
      ),
    );
  }
}

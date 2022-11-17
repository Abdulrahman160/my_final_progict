import 'package:flutter/material.dart';

import '../../widget/Container_Button_Color.dart';
import '../../widget/Container_Button_nonColor.dart';
import '../../widget/Text_From_Filed.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
                  padding: const EdgeInsets.symmetric(horizontal: 65),
                  child: Row(
                    children: [
                      Text(
                        'Register',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),
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
                      return "${value[0].toUpperCase()}${value.substring(1).toLowerCase()}";
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
                    } else if (!value.contains('@')) {
                      return 'Email must contain @.com';
                    } else {
                      return null;
                    }
                  },
                ),
                SizedBox(
                  height: 16,
                ),
                ContainerView(
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
                ContainerView(
                  keyboardType: TextInputType.emailAddress,
                  text: 'Confirm Password',
                  onchange: (String value) {
                    password = value;
                  },
                  validator: (value) {
                    if (password == ConfirmPassword) {
                      return 'ok';
                    } else if (ConfirmPassword != password) {
                      return "Confirm Password Is Not Equal Password";
                    } else (){
                      return ;
                    };
                  },
                ),
                SizedBox(
                  height: 24,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
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
                          color: Colors.deepOrange),
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
                  padding: const EdgeInsets.symmetric(horizontal: 80),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Data policy',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: Colors.deepOrange),
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
                            color: Colors.deepOrange),
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
                      return;
                    }
                    // if(email.isEmpty && !value.contains('@') && ${value[0].toUpperCase()}${value.substring(1).toLowerCase()} )
                  },
                ),
                SizedBox(
                  height: 24,
                ),
                ContainerNonColorView(
                  data: 'Cancel',
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

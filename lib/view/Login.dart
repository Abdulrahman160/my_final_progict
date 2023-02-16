import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:my_final_progict/conestant/image.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../conestant/conset.dart';
import '../widget/Container_Button_Color.dart';
import '../widget/Container_Button_nonColor.dart';
import '../widget/Text_From_Filed.dart';
import 'SignUp/SignUp_View.dart';
import 'forget_password/Enter_Email.dart';

class LoginView extends StatefulWidget {
  const LoginView({
    Key? key,
  }) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final formKay = GlobalKey<FormState>();
  String? email;
  String? password;
  bool keepUserLogIn = false;
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
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  SizedBox(
                    height: 60,
                  ),
                  Center(
                    child: Container(
                      height: 120,
                      width: 120,
                      child: Image.asset("assets/images/logo.png"),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                      Text(
                        'Login to Your Account',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
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
                  ),
                  TextFormFieldView(
                    //controller: passwordController,
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
                  Row(
                    children: [
                      Theme(
                        data: ThemeData(
                          unselectedWidgetColor: Color(0XFF95D7FF),
                        ),
                        child: Checkbox(
                          value: keepUserLogIn,
                          onChanged: (value) {
                            setState(() {
                              keepUserLogIn = value!;
                            });
                          },
                          checkColor: Colors.white,
                        ),
                      ),
                      Text(
                        'Remember me',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                  ContainerColorView(
                    data: 'Login',
                    onTap: () {
                      if (formKay.currentState!.validate()) {
                        return;
                      }
                      if (keepUserLogIn == true) {
                        keepUserLoggedIn();
                      }
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: InkWell(
                          onTap: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => EnterEmailView()));
                          },
                          child: Text(
                            'Forget Password ?',
                            style: TextStyle(
                                color: Color(0xffF77A55),
                                fontWeight: FontWeight.w600,
                                fontSize: 16),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 36,
                  ),
                  Center(
                      child: Text(
                        'Or login with',
                        style: TextStyle(
                            color: textColor,
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                          child: ContainerNonColorView(
                            enableImage: true,
                            image: AppImage.google,
                          )),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                          child: ContainerNonColorView(
                            enableImage: true,
                            image: AppImage.facebook,
                          )),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                          child: ContainerNonColorView(
                            enableImage: true,
                            image: AppImage.twitter,
                          )),
                    ],
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Center(
                    child: RichText(
                        text: TextSpan(
                            text: "Don't have an account ?",
                            style: TextStyle(
                              color: textColor,
                              fontSize: 14,
                            ),
                            children: [
                              TextSpan(
                                  text: "   Rigester",
                                  style: TextStyle(
                                      color: textOrangeColor, fontSize: 14,fontWeight: FontWeight.w600),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      Navigator.pushReplacement(context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  SignUpView()));
                                    })
                            ])),
                  )
                ]),
            ),
          ),
        ));
  }

  void keepUserLoggedIn() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    sp.setBool(kkeepUserLoggedIn, keepUserLogIn);
  }
}

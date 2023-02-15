import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:my_final_progict/conestant/image.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../conestant/conset.dart';
import '../conestant/conset.dart';
import '../conestant/conset.dart';
import '../widget/Container_Button_Color.dart';
import '../widget/Container_Button_nonColor.dart';
import '../widget/Text_From_Filed.dart';
import 'SignUp/signup_view.dart';
import 'forget_password/enter_email.dart';

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
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
                      height: 24,
                    ),
                    RichText(
                      text: TextSpan(
                          text: "Login to Your Account",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 16,color: Colors.black)),
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
                    Align(
                      alignment: Alignment.bottomRight,
                      child: RichText(
                          text: TextSpan(
                              text: "Forget Password ? ",
                              style: TextStyle(
                                  color: textOrangeColor,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              EnterEmailView()));
                                })),
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
                              enableImage: true, image: AppImage.google),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Expanded(
                          child: ContainerNonColorView(
                              enableImage: true, image: AppImage.facebook),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Expanded(
                          child: ContainerNonColorView(
                              enableImage: true, image: AppImage.twitter),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RichText(
                          text: TextSpan(
                              text: "Don’t have an account’t ?",
                              style: TextStyle(
                                  color: textColor,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14),
                              children: [
                                TextSpan(
                                    text: "  Register",
                                    style: TextStyle(
                                        color: textOrangeColor,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        Navigator.pushReplacement(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    SignUpView()));
                                      }),
                              ]),
                        ),
                      ],
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

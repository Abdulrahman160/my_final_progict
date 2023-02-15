import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../conestant/conset.dart';
import '../conestant/image.dart';
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
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
<<<<<<<<< Temporary merge branch 1
                   SizedBox(height: 60,),
                    Center(
                      child: Container(
                        height: 120,
                        width: 120,
                        child: Image.asset(AppImage.logo),
                      ),
                    ),
                        SizedBox(height: 24,),
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
=========
                    SizedBox(
                      height: 60,
                    ),
                    Center(
                      child: Container(
                        height: 120,
                        width: 120,
                        child: Image.asset(AppImage.logo),
                      ),
                    ),
                    SizedBox(
                      height: 24,
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
                    InkWell(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => EnterEmailView()));
                      },
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          'Forget Password ?',
                          style: TextStyle(
                            color: Color(0xffF77A55),
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 36,
                    ),
                    Center(
                        child: Text(
                      'Or login with',
                      style: TextStyle(
                          color: Color(0xff2E2E5D),
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    )),
                    SizedBox(
                      height: 20,
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ContainerNonColorView(
                          enableImage: true,
                          image: AppImage.google,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        ContainerNonColorView(
                          enableImage: true,
                          image: AppImage.google,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        ContainerNonColorView(
                          enableImage: true,
                          image: AppImage.google,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Don’t have an accoun’t ?',
                          style: TextStyle(
                              color: Color(0xff2E2E5D),
                              fontWeight: FontWeight.w400,
                              fontSize: 14),
                        ),
                        SizedBox(
                          width: 5,
                        ),
>>>>>>>>> Temporary merge branch 2
                        InkWell(
                          onTap: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignUpView()));
                          },
                          child: Align(
                            alignment: Alignment.bottomRight,
                            child: Text(
                              'Forget Password ?',
                              style: TextStyle(
                                  color: Color(0xffF77A55),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16),
                            ),
                          ),
                        ),
                  SizedBox(height:36 ,),
                    Center(
                        child: Text(
                      'Or login with',
                      style: TextStyle(
                          color: Color(0xff2E2E5D),
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    )),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: ContainerNonColorView(
                            secure: true,
                            image: AppImage.google,
                          ),
                        ),
                        SizedBox(width: 10,),
                        Expanded(
                          child: ContainerNonColorView(
                            secure: true,
                            image: AppImage.google,
                          ),
                        ),
                        SizedBox(width: 10,),
                        Expanded(
                          child: ContainerNonColorView(
                            secure: true,
                            image: AppImage.google,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Don’t have an accoun’t ?',
                          style: TextStyle(
                              color: Color(0xff2E2E5D),
                              fontWeight: FontWeight.w400,
                              fontSize: 14),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignUpView()));
                          },
                          child: Text(
                            'Register',
                            style: TextStyle(
                                color: Color(0xffF77A55),
                                fontWeight: FontWeight.w600,
                                fontSize: 14),
                          ),
                        ),
                      ],
                    ),
<<<<<<<<< Temporary merge branch 1


=========
>>>>>>>>> Temporary merge branch 2
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

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../conset.dart';
import '../widget/Container_Button_Color.dart';
import '../widget/Text_From_Filed.dart';
import '../widget/cusstom_password_field.dart';
import 'Sign_Up/SignUp_View.dart';
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
  TextEditingController passwordController =TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backColor,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Form(
            key: formKay,
            child: ListView(
              children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  SizedBox(
                    height: 126,
                  ),
                  Center(
                    child: Container(
                      height: 120,
                      width: 120,
                      child: Image.asset("assets/images/Logo.png"),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        'Login to Your Account',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
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
                    //controller: passwordController,
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
                        color: Color(0xff2E2E5D),
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                  )),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        // onTap: TODO NAVIGATOR TO google ,
                        child: Container(
                          height: 56,
                          width: 70,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8)),
                          child: Image.asset("assets/images/Google.png"),
                        ),
                      ),
                      InkWell(
                        // onTap: TODO NAVIGATOR TO Facebook ,
                        child: Container(
                          height: 56,
                          width: 70,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8)),
                          child: Image.asset("assets/images/Facebook.png"),
                        ),
                      ),
                      InkWell(
                        // onTap: TODO NAVIGATOR TO onedrive ,
                        child: Container(
                          height: 56,
                          width: 70,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8)),
                          child: Image.asset("assets/images/Twitter.png"),
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
                        'Don???t have an accoun???t ?',
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
                      )
                    ],
                  )
                ]),
              ],
            ),
          ),
        ));
  }

  void keepUserLoggedIn() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    sp.setBool(kkeepUserLoggedIn, keepUserLogIn);
  }
}

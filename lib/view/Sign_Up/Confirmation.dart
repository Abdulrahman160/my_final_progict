import 'package:flutter/material.dart';
import 'package:my_final_progict/conset.dart';

import '../../widget/Container_Button_Color.dart';
import '../../widget/Container_Button_nonColor.dart';
import '../../widget/Text_From_Filed.dart';
import 'SignUp_View.dart';
import 'Succes.dart';

class SignUpConfirmationView extends StatefulWidget {
  const SignUpConfirmationView({Key? key}) : super(key: key);

  @override
  State<SignUpConfirmationView> createState() => _SignUpConfirmationViewState();
}

final formKay = GlobalKey<FormState>();
String? confirmationCode;

class _SignUpConfirmationViewState extends State<SignUpConfirmationView> {
  final formKay = GlobalKey<FormState>();
  String? confirmationCode;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backColor,
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Form(
          key: formKay,
          child: ListView(
              keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
              children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 30,
                ),
                Center(
                  child: Image.asset(
                    "assets/images/Logo.png",
                    height: 120,
                    width: 120,
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Confirmation Code",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: textColor,
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        "Enter the confirmation code we sent to ",
                        style: TextStyle(
                            fontSize: 14,
                            color: textColor,
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "your@mail.com.",
                        style: TextStyle(
                            fontSize: 14,
                            color: textColor,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                ContainerView(
                  keyboardType: TextInputType.number,
                  text: "Confirmation Code",
                  onchange: (value) {
                    confirmationCode = value;
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Confirmation Code can not be empty';
                    } else {
                      return null;
                    }
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Didn’t receive the code?",
                      style: TextStyle(
                          color: textColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Text(
                      "Resend",
                      style: TextStyle(
                        color: textOrangeColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Builder(builder: (context) {
                  return ContainerColorView(
                    //Todo:put condition when get API,
                    data: "Submit",
                    onTap: () {
                      if (formKay.currentState!.validate()) {
                        showBottomSheet(
                          context: context,elevation: 5,
                          builder: (BuildContext context) {
                            return SignUpSuccessfully();
                          },

                        );
                        closeKeyboard(context);
                      } else {
                        return;
                      }
                    },
                  );
                }),
                SizedBox(
                  height: 16,
                ),
                ContainerNonColorView(
                  data: "Cancel",
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignUpView(),
                        ));
                  },
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}

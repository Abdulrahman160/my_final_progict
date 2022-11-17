import 'package:flutter/material.dart';
import 'package:my_final_progict/conset.dart';

import '../../widget/Container_Button_Color.dart';
import '../../widget/Container_Button_nonColor.dart';
import '../../widget/Text_From_Filed.dart';

class SignUpConfirmationView extends StatefulWidget {
  const SignUpConfirmationView({Key? key}) : super(key: key);

  @override
  State<SignUpConfirmationView> createState() => _SignUpConfirmationViewState();
}

String? confirmPassword;

class _SignUpConfirmationViewState extends State<SignUpConfirmationView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 60,
                ),
                Center(
                    child: Image.asset(
                  "assets/images/Logo.png",
                  height: 120,
                  width: 120,
                )),
                SizedBox(
                  height: 28,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  child: Text(
                    "Confirmation Code",
                    style: TextStyle(
                        color: textColor,
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  child: RichText(
                    text: TextSpan(
                        text: "Enter the confirmation code we sent to ",
                        style: TextStyle(
                            color: textColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                        children: [
                          TextSpan(
                            text: "your@mail.com",
                            style: TextStyle(
                                color: textColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                          TextSpan(
                            text: ".",
                            style: TextStyle(
                                color: textColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w400),
                          ),
                        ]),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ContainerView(
                  text: "Confirmation Code",
                  keyboardType: TextInputType.text,
                  onchange: (String value) {
                    confirmPassword = value;
                  },
                  validator: (value) {},
                ),
                SizedBox(height: 16,),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  child: Row(
                    children: [
                      Text(
                        "Didn’t receive the code?",
                        style: TextStyle(
                          color: textColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(width: 8,),
                      Text("Resend",style: TextStyle(
                        color: textOrangeColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),),


                    ],
                  ),
                ),
                SizedBox(height: 20,),
                ContainerColorView(data: "Submit"),
                SizedBox(height: 20,),
                ContainerNonColorView(data: "Cancel"),
              ],
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:my_final_progict/conestant/conset.dart';
import '../../conestant/image.dart';
import '../../widget/Container_Button_Color.dart';
import '../../widget/Container_Button_nonColor.dart';
import '../../widget/Text_From_Filed.dart';
import '../Forget_Password/set_new_password.dart';
import '../Login.dart';
import 'succes.dart';

class SignUpConfirmationView extends StatefulWidget {
  const SignUpConfirmationView({
    Key? key,
    this.controlacsses = true,
  }) : super(key: key);

  @override
  final bool controlacsses;
  State<SignUpConfirmationView> createState() => _SignUpConfirmationViewState();
}

final formKay = GlobalKey<FormState>();
String? confirmationCode;

class _SignUpConfirmationViewState extends State<SignUpConfirmationView> {
  final formKay = GlobalKey<FormState>();
  String? confirmationCode;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                          AppImage.logo,
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
                      TextFormFieldView(
                        number: 1,
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
                        }, onSaved:(val){},
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      RichText(
                          text: TextSpan(
                              text: "Didn’t receive the code ?",
                              style: TextStyle(
                                  color: textColor,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400),
                              children: [
                            TextSpan(
                                text: "   Resend",
                                style: TextStyle(
                                    color: textOrangeColor,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14))
                          ])),
                      SizedBox(
                        height: 16,
                      ),
                      Builder(builder: (context) {
                        return ContainerColorView(
                          //Todo:put condition when get API,
                          data: "Submit",
                          onTap: () {
                            if (formKay.currentState!.validate()) {
                              widget.controlacsses
                                  ? showBottomSheet(
                                      context: context,
                                      elevation: 5,
                                      builder: (BuildContext context) {
                                        return SignUpSuccessfully();
                                      },
                                    )
                                  : Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => SetNewPassword(),
                                      ));
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
                                builder: (context) => LoginView(),
                              ));
                        },
                      ),
                    ],
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}

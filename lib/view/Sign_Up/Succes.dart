import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../conset.dart';
import '../../widget/Container_Button_Color.dart';

class SignUpSuccessfully extends StatelessWidget {
  const SignUpSuccessfully({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 10,
              ),
              Image.asset("assets/images/success_profil.png"),
              Text(
                "Register Successfully",
                style: TextStyle(
                    color: textColor,
                    fontSize: 17,
                    fontWeight: FontWeight.w600),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Congratulation! your account already created.",
                  style: TextStyle(
                      color: Color(0XFFA7A9B7),
                      fontSize: 10,
                      fontWeight: FontWeight.w400),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Please login to get amazing experience.",
                  style: TextStyle(
                      color: Color(0XFFA7A9B7),
                      fontSize: 10,
                      fontWeight: FontWeight.w400),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              ContainerColorView(data: "Continue"),
            ],
          ),
        ),
      ),
    );
  }
}

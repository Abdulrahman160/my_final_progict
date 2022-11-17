import 'package:flutter/material.dart';
import 'package:my_final_progict/conset.dart';

import '../widget/Container_Button_nonColor.dart';

class EmailSendPassword extends StatelessWidget {
  const EmailSendPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Column(
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
              height: 25,
            ),
            Text(
              "Email Sent",
              style: TextStyle(
                  color: textColor, fontSize: 18, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 15,
            ),
            RichText(
              text: TextSpan(
                text: "We sent an email to ",
                style: TextStyle(
                  color: textColor,
                  fontSize: 16,
                ),
                children: [
                  TextSpan(
                    text: "y***@mail.com",
                    style: TextStyle(
                      color: textColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                  TextSpan(
                    text: " with a link to get back into your account.",
                    style: TextStyle(
                      color: textColor,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 24.0),
              child: InkWell(child: ContainerNonColorView(data: "Close")),
            ),
          ],
        ),
      ),
    );
  }
}


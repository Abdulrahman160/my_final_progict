import 'package:flutter/material.dart';

import '../../../conestant/conset.dart';
import '../Widget/container_view.dart';
import 'contact_us_model.dart';

class ContactUsView extends StatefulWidget {
  const ContactUsView({Key? key, }) : super(key: key);

  @override
  State<ContactUsView> createState() => _ContactUsViewState();
}

class _ContactUsViewState extends State<ContactUsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: contactus.length,
                itemBuilder: (context, index) => ContainerContactUsView(
                  data: contactus[index],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

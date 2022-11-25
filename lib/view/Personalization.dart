import 'package:flutter/material.dart';
import 'package:my_final_progict/conset.dart';

import '../widget/Text_From_Filed.dart';

class PersonalizationView extends StatefulWidget {
  const PersonalizationView({Key? key}) : super(key: key);

  @override
  State<PersonalizationView> createState() => _PersonalizationViewState();
}

class _PersonalizationViewState extends State<PersonalizationView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backColor,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/Background (1).png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 75,
              ),
              Center(child: Image.asset("assets/images/Personalization.png")),
              SizedBox(
                height: 15,
              ),
              Text(
                "Complete Your Information",
                style: TextStyle(
                    color: textColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 60,
                    width: 65,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color(0XFFF5F5FA),
                    ),
                    child: Text(
                      "+20",
                      style: TextStyle(color: Colors.black, fontSize: 15),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 60,
                    width: 220,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color(0XFFF5F5FA),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: TextFormField(
                        textAlign: TextAlign.start,
                        decoration: InputDecoration(
                          hintText: "Phone Number",
                          helperStyle: TextStyle(
                              color: hintTextColor.withOpacity(0.1),
                              fontWeight: FontWeight.w600,
                              fontSize: 14),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

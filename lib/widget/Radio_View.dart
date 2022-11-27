import 'package:flutter/material.dart';

import '../conset.dart';

class RadioView extends StatefulWidget {
  const RadioView({
    Key? key,
    required this.title,
    required this.textRadio1,
    required this.textRadio2,
  }) : super(key: key);
  final String title;
  final String textRadio1;
  final String textRadio2;

  @override
  State<RadioView> createState() => _RadioViewState();
}

Object? group = 0;
bool? colorChange = false;


class _RadioViewState extends State<RadioView> {
  @override
  void initState() {

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Color(0XFFF5F5FA),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.title,
              style: TextStyle(
                color: textColor,
                fontSize: 15,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 20,
              width: 230,
              child:
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Radio(
                    value: 1,
                    groupValue: group,
                    onChanged: (value) {
                      setState(
                        () {
                          group = value;
                          if(group==1){
                            colorChange=false;
                          }
                          else if(group==2){
                            colorChange=true;
                          }
                        },
                      );
                    },
                  ),
                  Text(
                    widget.textRadio1,
                    style: TextStyle(
                      color: colorChange!?hintTextColor:Colors.blue,
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Radio(
                    value: 2,
                    groupValue: group,
                    onChanged: (value) {
                      setState(
                        () {
                          //TODO: put validation
                          group = value;
                          if(group==1){
                            colorChange=false;
                          }
                          else if(group==2){
                            colorChange=true;
                          }

                        },
                      );
                    },
                  ),
                  Text(
                    widget.textRadio2,
                    style: TextStyle(
                        color: colorChange!?Colors.blue:hintTextColor,
                        fontSize: 17,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

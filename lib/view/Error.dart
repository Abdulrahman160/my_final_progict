import 'package:flutter/material.dart';

import '../conset.dart';
import '../widget/Container_Button_nonColor.dart';

class ErrorView extends StatelessWidget {
  const ErrorView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backColor,
      appBar: AppBar(
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWell(
                // onTap: TODO NAVIGATOR TO ,
                child: Container(
                  alignment: Alignment.center,
                  height: 48,
                  width: 48,
                  decoration: BoxDecoration(
                      color: Color(0xffF2F2F5).withOpacity(0.4),
                      borderRadius: BorderRadius.circular(40)),
                  child: Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ],
        centerTitle: true,
        title: Text(
          'Error',
          style: TextStyle(
              color: textColor,
              fontSize: 16,
              fontWeight: FontWeight.w500),
        ),
        shadowColor: Color(0xffF3F1FE).withOpacity(0.2),
        backgroundColor: Color(0xffFFFFFF).withOpacity(0.8),

      ),
      body: ListView(
        children: [
          SizedBox(
            height: 100,
          ),
          Center(
            child: Image.asset("assets/images/Error.png"),
          ),
          SizedBox(
            height: 32,
          ),
          Center(
              child: Text(
            'Ops! Something Went Wrong',
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16,color: textColor),
          )),
          SizedBox(
            height: 12,
          ),
          Center(
              child: Text(
            'Please check your internet connection',
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16,
                color: textColor),
          )),
          SizedBox(
            height: 6,
          ),
          Center(
              child: Text(
            'and try again.',
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16,
                color: textColor),
          )),
          SizedBox(
            height: 50,
          ),
          const Center(
            child: InkWell(
              // onTap: TODO NAVIGATOR TO PAGE,
              child: ContainerNonColorView(
                data: 'Retry',
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../widget/Container_Button_nonColor.dart';

class ErrorView extends StatelessWidget {
  const ErrorView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Error',
          style: TextStyle(
              color: Color(0xff2E2E5D),
              fontSize: 16,
              fontWeight: FontWeight.w500),
        ),
        shadowColor: Color(0xffF3F1FE).withOpacity(0.2),
        backgroundColor: Color(0xffFFFFFF).withOpacity(0.8),
        actions: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              InkWell(
                // onTap: TODO NAVIGATOR TO PAGE,
                child: Container(
                  alignment: Alignment.center,
                  height: 48,
                  width: 48,
                  decoration: BoxDecoration(
                      color: Color(0xffFEFEFE).withOpacity(0.5),
                      borderRadius: BorderRadius.circular(40)),
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ],
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
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
          )),
          SizedBox(height: 12,),
          Center(
              child: Text(
            'Please check your internet connection',
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16,
                color: Color(0xff2E2E5D)),
          )),
          SizedBox(height: 6,),
          Center(
              child: Text(
            'and try again.',
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16,
                color: Color(0xff2E2E5D)),
          )),
          SizedBox(height: 50,),
          const Center(
            child: InkWell(
              // onTap: TODO NAVIGATOR TO PAGE,
              child: ContainernonColorView(
                data: 'Retry',
              ),
            ),
          )
        ],
      ),
    );
  }
}

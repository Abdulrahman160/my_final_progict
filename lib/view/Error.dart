import 'package:flutter/material.dart';

class ErrorView extends StatelessWidget {
  const ErrorView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Error',style: TextStyle(color: Color(0xff2E2E5D),fontSize: 16,fontWeight: FontWeight.w500),),
        shadowColor: Color(0xffF3F1FE).withOpacity(0.2),
        backgroundColor: Color(0xffFFFFFF).withOpacity(0.8),
        actions: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            // mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                padding: EdgeInsets.only(left: 8),
                alignment: Alignment.center,
                height: 48,
                width: 48,
                decoration: BoxDecoration(
                    color: Color(0xffF2F2F5).withOpacity(0.4),
                    borderRadius: BorderRadius.circular(40)
                ),
                child: Icon(Icons.arrow_back_ios,color: Colors.black,),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

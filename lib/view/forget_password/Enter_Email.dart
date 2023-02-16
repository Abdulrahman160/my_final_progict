import 'package:flutter/material.dart';
import '../../conestant/conset.dart';
import '../../conestant/image.dart';
import '../../widget/Container_Button_Color.dart';
import '../../widget/Container_Button_nonColor.dart';
import '../../widget/Text_From_Filed.dart';
import '../Login.dart';
import 'Email_Send_Password.dart';

class EnterEmailView extends StatefulWidget {
  const EnterEmailView({Key? key}) : super(key: key);

  @override
  State<EnterEmailView> createState() => _EnterEmailViewState();
}

class _EnterEmailViewState extends State<EnterEmailView> {
  final formKay = GlobalKey<FormState>();
  String? email;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backColor,
      body: Form(
        key: formKay,
        child: ListView(
          children: [
            SizedBox(height: 60,),
            Center(
              child: Container(
                height: 120,
                width: 120,
                child: Image.asset(AppImage.logo),
              ),
            ),
            SizedBox(height: 24,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 48),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Forget Password',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: textColor),),
                  SizedBox(height: 12,),
                  Text('Please fill email or phone number and',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14,color: textColor),),
                  SizedBox(height: 5,),
                  Text('we\'sll send you a link to get back into your ',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14,color: textColor),),
                  SizedBox(height: 5,),
                  Text('account.',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14,color: textColor),),
                  SizedBox(height: 16,),
                  TextFormFieldView(
                    text: 'Email ',
                    keyboardType: TextInputType.emailAddress,
                    onchange: (String value) {
                      email = value;
                    },
                      validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Email can be not empty';
                      } else if (!value.contains('@')) {
                        return 'Email must contain @.com';
                      } else {
                        return null;
                      }},
                  ),
                  SizedBox(height: 16,),
                  ContainerColorView(
                    data: 'Submit',
                    onTap: () {
                      if (formKay.currentState!.validate()) {
                        Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=>EmailSendPassword()));

                      }else{
                        return;

                      }
                    },
                  ),
                  SizedBox(height: 16,),
                  ContainerNonColorView(
                    data: 'Back to Login',
                    onTap: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=>LoginView()));
                    },
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

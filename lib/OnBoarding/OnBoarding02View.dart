import 'package:flutter/material.dart';

class OnBoarding02View extends StatelessWidget {
  const OnBoarding02View({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/Background (1).png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 200,),
            Image.asset("assets/images/Illustration.png"),
            Text(
              'Tittle One',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            SizedBox(
              height: 12,
            ),
            Text('Lorem ipsum dolor sit amet la maryame '),
            SizedBox(
              height: 3,
            ),
            Text('dor sut colondeum.'),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 12,
                  width: 12,
                  decoration: BoxDecoration(
                      color: Color(0xff7466E3),
                      borderRadius: BorderRadius.circular(40)),
                ),
                SizedBox(
                  width: 12,
                ),
                Container(
                  height: 12,
                  width: 12,
                  decoration: BoxDecoration(
                      color: Color(0xffF77A55),
                      borderRadius: BorderRadius.circular(40)),
                ),
                SizedBox(
                  width: 12,
                ),
                Container(
                  height: 12,
                  width: 12,
                  decoration: BoxDecoration(
                      color: Color(0xff7466E3),
                      borderRadius: BorderRadius.circular(40)),
                )
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Skip',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500,color: Color(0xff4838D1)),
                ),
                SizedBox(width: 100,),
                Container(
                  child:
                  Center(child: Text('Next',style: TextStyle(color: Color(0xffFFFFFF),fontWeight: FontWeight.w500,fontSize: 16),)),
                  height: 40,
                  width: 80,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color(0xff2E91EF)
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

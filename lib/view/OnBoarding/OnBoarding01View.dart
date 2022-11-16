import 'package:flutter/material.dart';

class OnBoarding01View extends StatelessWidget {
  const OnBoarding01View({Key? key}) : super(key: key);

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
            const SizedBox(
              height: 200,
            ),
            Image.asset("assets/images/Illustration.png"),
            const Text(
              'Tittle One',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            const SizedBox(
              height: 12,
            ),
            const Text('Lorem ipsum dolor sit amet la maryame '),
            const SizedBox(
              height: 3,
            ),
            const Text('dor sut colondeum.'),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 12,
                  width: 12,
                  decoration: BoxDecoration(
                      color: const Color(0xffF77A55),
                      borderRadius: BorderRadius.circular(40)),
                ),
                const SizedBox(
                  width: 12,
                ),
                Container(
                  height: 12,
                  width: 12,
                  decoration: BoxDecoration(
                      color: const Color(0xff7466E3),
                      borderRadius: BorderRadius.circular(40)),
                ),
                const SizedBox(
                  width: 12,
                ),
                Container(
                  height: 12,
                  width: 12,
                  decoration: BoxDecoration(
                      color: const Color(0xff7466E3),
                      borderRadius: BorderRadius.circular(40)),
                )
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 40,
                  width: 80,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.blue),
                  ),
                  child: const Center(
                    child: Text(
                      'Skip',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff4838D1)),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 100,
                ),
                InkWell(
                  //TODO
                  // navagator to  next page
                  onTap: null,
                  child: Container(
                    height: 40,
                    width: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: const Color(0xff2E91EF)),
                    child: const Center(
                        child: Text(
                      'Next',
                      style: TextStyle(
                          color: Color(0xffFFFFFF),
                          fontWeight: FontWeight.w500,
                          fontSize: 16),
                    )),
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

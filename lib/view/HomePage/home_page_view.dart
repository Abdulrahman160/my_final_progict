import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_final_progict/conestant/image.dart';

import '../../conestant/conset.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(AppImage.homeBackground),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 27),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      height: 47,
                      alignment: Alignment.center,
                      width: 67,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25),
                        border: Border.all(
                          color: Color(0xffECEDF3),
                        ),
                      ),
                      child: Text(
                        "level 1",
                        style: TextStyle(fontSize: 12, color: textColor),
                      ),
                    ),
                    Spacer(),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Color(0xff2E91EF),
                        ),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Stack(
                        children: [
                          Center(
                            child: Icon(
                              Icons.notifications_none,
                              color: Color(0xff252B5C),
                              size: 25,
                            ),
                          ),
                          Positioned(
                            right: 12,
                            top: 10,
                            child: Container(
                              alignment: Alignment.center,
                              height: 12,
                              width: 12,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(25),
                              ),
                              child: Container(
                                height: 6,
                                width: 6,
                                decoration: BoxDecoration(
                                  color: Color(0xff2E91EF),
                                  borderRadius: BorderRadius.circular(25),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CircleAvatar(
                        child: CircleAvatar(
                          backgroundImage: AssetImage(AppImage.person),
                          radius: 25,
                        ),
                        backgroundColor: Color(0xffDFDFDF),
                        radius: 26),
                  ],
                ),
                SizedBox(
                  height: 38,
                ),
                RichText(
                  text: TextSpan(
                      text: "Hey, Tiana ",
                      style: TextStyle(
                        fontSize: 25,
                        color: textColor,
                      ),
                      children: [
                        TextSpan(
                          text: "!\n",
                          style: TextStyle(
                            color: Color(0xff234F68),
                          ),
                        ),
                        TextSpan(
                          text: " Let's start exploring  ",
                        )
                      ]),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 70,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xffF5F4F8),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Search Training, Doctor, etc",
                      hintStyle: TextStyle(color: hintTextFiledColor),
                      suffixIcon: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            height: 40,
                            width: 1,
                            color: Color(0xffA1A5C1),
                          ),                          SizedBox(width: 10,),

                          Icon(Icons.mic_none)
                        ],
                      ),
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.black,
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

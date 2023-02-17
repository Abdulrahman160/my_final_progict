import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../conestant/conset.dart';

class SearchView extends StatelessWidget {
  const SearchView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return     Container(
      height: 70,
      width: double.infinity,
      decoration: BoxDecoration(
        color: kGray,
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: "Search",
          hintStyle: TextStyle(color: hintTextFiledColor),
          suffixIcon: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 40,
                width: 1,
                color: Color(0xffA1A5C1),
              ),                          SizedBox(width: 10,),

              Icon(Icons.mic_none),
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
    );
  }
}

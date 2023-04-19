import 'package:flutter/material.dart';

import '../conestant/conset.dart';

class CustomLatterRadioView extends StatefulWidget {
  const CustomLatterRadioView({Key? key}) : super(key: key);

  @override
  createState() {
    return  CustomLatterRadioViewState();
  }
}

class CustomLatterRadioViewState extends State<CustomLatterRadioView> {
  List<RadioModel> sampleData = <RadioModel>[];

  @override
  void initState() {

    super.initState();
    sampleData.add( RadioModel(false, 'A', 'Not At All'));
    sampleData.add( RadioModel(false, 'B', 'A Little Bit'));
    sampleData.add( RadioModel(false, 'C', 'Somewhat'));
    sampleData.add( RadioModel(false, 'D', 'Very Much'));
    sampleData.add( RadioModel(false, 'E', 'Extremely'));
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: kTransparent,
      body:  ListView.builder(
        itemCount: sampleData.length,
        itemBuilder: (BuildContext context, int index) {
          return  InkWell(
            onTap: () {
              setState(() {
                sampleData.forEach((element) => element.isSelected = false);
                sampleData[index].isSelected = true;
              });
            },
            child:  RadioItem(sampleData[index]),
          );
        },
      ),
    );
  }
}

class RadioItem extends StatelessWidget {
  final RadioModel _item;

  RadioItem(this._item);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            height: 40,
            width: 40,
            child:  Center(
              child:  Text(_item.buttonText,
                  style:  TextStyle(
                      color: _item.isSelected ? Colors.white : Colors.white,
                      //fontWeight: FontWeight.bold,
                      fontSize: 18.0)),
            ),
            decoration:  BoxDecoration(
              color: _item.isSelected ? Colors.blue : Colors.grey,
              border:  Border.all(
                  width: 1.0,
                  color: _item.isSelected ? Colors.blueAccent : Colors.grey),
              borderRadius:  BorderRadius.all( Radius.circular(25.0)),
            ),
          ),
          Container(
            margin:  EdgeInsets.only(left: 10.0),
            child:  Text(_item.text),
          )
        ],
      ),
    );
  }
}

class RadioModel {
  bool isSelected;
  final String buttonText;
  final String text;

  RadioModel(this.isSelected, this.buttonText, this.text);
}

import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:speech_to_text/speech_to_text.dart' ;

import '../../conestant/conset.dart';

class SearchView extends StatefulWidget {
  const SearchView({Key? key}) : super(key: key);

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  bool isListening = false;

   SpeechToText speechToText=SpeechToText();

  String searchText = "";
  Future<bool> _initSpeech() async {

   return isListening = await speechToText.initialize(
     debugLogging: true
   );
  }

  void onListen() async {
    _initSpeech();
      if (!isListening) {
        print('taha');
        setState(() {
          isListening = true;
        });
        speechToText.listen(
            onResult: (val) => setState(() {
                  searchText = val.recognizedWords;
                }));

    } else {
      isListening = false;
      speechToText.stop();
    }
  }

  @override
  void initState() {
    // _initSpeech();
    // speechToText = SpeechToText();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 70,
      decoration: BoxDecoration(
        color: kGray,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
              decoration: InputDecoration(
                hintText: "Search Training, Doctor, etc",
                hintStyle: TextStyle(color: hintTextFiledColor, fontSize: 15),
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
          Container(
            height: 40,
            width: 1,
            color: Color(0xffA1A5C1),
          ),
          SizedBox(
            width: 10,
          ),
          AvatarGlow(
            endRadius: 18,
            duration: Duration(milliseconds: 2000),
             animate: isListening,
            glowColor: kBlue,
            repeatPauseDuration: Duration(milliseconds: 100),
            repeat: true,
            showTwoGlows: true,
            child: GestureDetector(

              onTap: (){
                onListen();
              },

                child: Icon( Icons.mic_none)),
          ),
          SizedBox(
            width: 10,
          )
        ],
      ),
    );
  }
}

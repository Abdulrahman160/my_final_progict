// import 'package:flutter/cupertino.dart';
// import 'package:speech_to_text/speech_to_text.dart';
//
// class SpeechApi {
//  static final speech = SpeechToText();
//   static Future<bool> toggelRecording({
//     @required Function(String text)? onResult,
// })async{
//     final isAvailable=await speech.initialize();
//     if(isAvailable){
//       speech.listen(onResult: (value)=>onResult!(value.recognizedWords));
//     }
//     return isAvailable;
//   }
// }

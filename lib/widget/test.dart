// import 'package:flutter/material.dart';
//
// class TestView extends StatelessWidget {
//   const TestView({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Padding(
//           padding:  EdgeInsets.all(50.0),
//           child: TextFormField(
//             decoration:  InputDecoration(contentPadding: EdgeInsets.all(20),
//               hintText: 'email',
//                 filled:true,
//               fillColor:Color(0xffF5F5FA),
//               enabledBorder: OutlineInputBorder(
//                 borderRadius:BorderRadius.circular(10),
//                 borderSide: BorderSide.none
//               ),
//               focusedBorder: OutlineInputBorder(
//                   borderRadius:BorderRadius.circular(25),
//                   borderSide: BorderSide.none
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
// suffixIcon: widget.enableSuffixIcon!
// ? GestureDetector(
// onTap: () {
// setState(() {
// obscureText = !obscureText;
// });
// },
// child: obscureText
// ? Icon(
// Icons.visibility_off,
// color: Colors.grey,
// )
// : Icon(
// Icons.visibility,
// color: containerNonBorderColor1,
// ))
// : Text(""),
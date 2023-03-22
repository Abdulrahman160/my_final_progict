import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:my_final_progict/view/Login.dart';
import 'package:my_final_progict/view/NavBar/nav_bar_view.dart';
import 'package:my_final_progict/view/ProfilePage/Edit_profile.dart';
import 'package:my_final_progict/view/ProfilePage/Update_Password.dart';
import 'package:my_final_progict/view/SignUp/confirmation.dart';



bool? isLogin;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  FirebaseMessaging.instance.getToken().then((value) => print(value));
  var user =FirebaseAuth.instance.currentUser;
  if(user ==null){
    isLogin=false;
  }else{
    isLogin=true;
  }
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:
      isLogin!?NavBarView():LoginView(),
      builder: (context, child) => SafeArea(child: child!),
      debugShowCheckedModeBanner: false,
      title: 'Mentis',
    );
  }
}

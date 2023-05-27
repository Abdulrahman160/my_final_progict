import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:my_final_progict/payment/paymob.dart';
import 'package:my_final_progict/view/NavBar/nav_bar_view.dart';
import 'package:my_final_progict/view/Personal_Information/complete_information.dart';
import 'package:my_final_progict/view/Personalization.dart';
import 'package:my_final_progict/view/auth/Login.dart';

final _globalKey = GlobalKey<NavigatorState>();
BuildContext appContext = _globalKey.currentContext!;
bool? isLogin;
String? users = 'Doctor';
String? userIdNumber;
String? userEmail;

void main() async {
  PaymobUtils.instance.init();
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();
  FirebaseMessaging.instance.getToken().then((value) => print(value));
  var user = FirebaseAuth.instance.currentUser;
  if (user == null) {
    isLogin = false;
  } else {
    isLogin = true;
  }

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: MaterialApp(
        navigatorKey: _globalKey,
        home: isLogin! ? NavBarView() : LoginView(),
        // it is to login
        builder: (context, child) => SafeArea(child: child!),
        debugShowCheckedModeBanner: false,
        title: 'Mentis',
      ),
    );
  }
}

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_final_progict/payment/paymob.dart';
import 'package:my_final_progict/view/Chat_Bot/chat_page.dart';
import 'package:my_final_progict/view/NavBar/nav_bar_view.dart';
import 'package:my_final_progict/view/PatientInformation/view.dart';
import 'package:my_final_progict/view/Personalization.dart';
import 'package:my_final_progict/view/ProfilePage/State_Mangement/cubit.dart';
import 'package:my_final_progict/view/Splash.dart';
import 'package:my_final_progict/view/auth/Login.dart';

import 'Test.dart';

final _globalKey = GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> navigatorKey =  GlobalKey<NavigatorState>();

BuildContext appContext = _globalKey.currentContext!;
bool? isLogin;
String? users = 'Patient';
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


  print('*' * 99);

  print('*' * 99);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => ProfileCubit()),
      ],
      child: GestureDetector(
        onTap: () {
          FocusManager.instance.primaryFocus?.unfocus();
        },
        child: MaterialApp(
          navigatorKey: _globalKey,
          home:
          SplashView(),
          // it is to login
          // isLogin! ? NavBarView() : LoginView(),

          builder: (context, child) => SafeArea(child: child!),
          debugShowCheckedModeBanner: false,
          title: 'Mentis',
        ),
      ),
    );
  }
}

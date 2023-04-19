import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../main.dart';
import 'auth_states.dart';

class AuthCubit extends Cubit<AuthStates> {
  AuthCubit() : super(InitialAppState());


//  register
  void register(
      {required String email,
      required String password,
      required String confirmPassword}) async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      if (userCredential.user?.uid != null) {
        userIdNumber=userCredential.user?.uid;
        userEmail=email;
        debugPrint("User Create Success With vid :${userCredential.user!.uid}");

        emit(UserCreatedSuccessState());
      }
    } on FirebaseAuthException catch (e) {
      debugPrint('Failed To Register , reason : ${e.code}');
      if (e.code == 'email-already-in-use') {
        emit(FailedToCreateUserState(massage: 'Email Already In Used'));
      } else if (e.code == 'weak-password') {
        emit(FailedToCreateUserState(massage: 'password is to week'));
      }
    }
  }


}

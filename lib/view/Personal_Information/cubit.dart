import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_final_progict/view/Personal_Information/states.dart';

import '../../main.dart';


class CompleteInfoCubit extends Cubit<CompleteInfoStates> {
  CompleteInfoCubit() : super(InitialCompleteInfoState());


  void sendUserDataToFireStore({
    required String name,
    required String address,
    required dynamic uRl,
    required String headLine,
     required String userGender,
    required String withDoctor,
    required String userType,
    required String birthDay,
  }) async {
    try {
      await FirebaseFirestore.instance.collection('Users').doc(userIdNumber).set({
        'name': name,
        'address': address,
        'uRl': uRl,
        'headLine': headLine,
        'userID': userIdNumber,
        'email': userEmail,
        'userGender' : userGender,
        'userType':userType,
        'withDoctor':withDoctor,
        'birthDay':birthDay



      });
      emit(SuccessCompleteInfoOnFireStoreState());
    }
    on FirebaseException catch (e) {
      emit(FailedCompleteInfoOnFireStoreState());
    }
  }
}

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_final_progict/view/Personal_Information/states.dart';
import 'package:my_final_progict/view/Personal_Information/user_model.dart';
import '../../main.dart';

class CompleteInfoCubit extends Cubit<CompleteInfoStates> {
  CompleteInfoCubit() : super(InitialCompleteInfoState());
  final nameController = TextEditingController();
  final addressController = TextEditingController();
  final headlineController = TextEditingController();
  final birthDayController = TextEditingController();
  String userGender = '';
  final userGenders = ['Male', 'Female'];
  String withDoctor = '';
  final choose = ['Yes', 'No'];

  void sendDoctorDataToFireStore({
    String? name,
    String? address,
    dynamic uRl,
    String? headLine,
    String? userGender,
    String? userType,
    String? birthDay,
    dynamic card,
  }) async {
    try {
      UserModel userDoctorModel = UserModel(
        name: nameController.text,
        address: addressController.text,
        birthDay: birthDayController.text,
        headLine: headlineController.text,
        userType: userType,
        userGender: this.userGender,
        uRl: uRl,
        card: card,
      );
      await FirebaseFirestore.instance
          .collection('Doctor')
          .doc(userIdNumber)
          .set(userDoctorModel.toJson());
      emit(SuccessCompleteInfoOnFireStoreState());
    } on FirebaseException catch (e) {
      emit(FailedCompleteInfoOnFireStoreState());
    }
  }

  void sendPatientDataToFireStore({
    String? name,
    String? address,
    dynamic uRl,
    String? userGender,
    String? withDoctor,
    String? userType,
    String? birthDay,
  }) async {
    try {
      UserModel userPatientModel = UserModel(
        name: nameController.text,
        address: addressController.text,
        birthDay: birthDayController.text,
        userType: userType,
        userGender: this.userGender,
        uRl: uRl,
        withDoctor: this.withDoctor,
      );

      await FirebaseFirestore.instance
          .collection('Patient')
          .doc(userIdNumber)
          .set(userPatientModel.toJson());
      emit(SuccessCompleteInfoOnFireStoreState());
    } on FirebaseException catch (e) {
      emit(FailedCompleteInfoOnFireStoreState());
    }
  }
}

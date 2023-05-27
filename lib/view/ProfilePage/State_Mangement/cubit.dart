import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:my_final_progict/view/Personal_Information/user_model.dart';
import 'package:my_final_progict/view/ProfilePage/State_Mangement/state.dart';

import '../../../main.dart';

class ProfileCubit extends Cubit<ProfileStates>{
  ProfileCubit() : super(ProfileInitialState());

 UserModel? userModel;
  void getMyData()async{
    try{
      await FirebaseFirestore.instance.collection('patient').doc(userIdNumber!).get().then((value) {
        userModel =  UserModel.fromJson(dataJson: value.data()!);
      });
      emit(GetMyDataSuccessState());
    }
   on FirebaseException catch(e){
      emit(GetMyDataFailedState());
   }
  }
}
import '../../main.dart';

class UserModel {
  String? email;
  String? name;
  String? address;
  dynamic uRl;
  String? headLine;
  String? userGender;
  String? userType;
  String? birthDay;
  dynamic card;
  String? withDoctor;

  UserModel({
    this.email,
    this.name,
    this.address,
    this.birthDay,
    this.userType,
    this.userGender,
    this.card,
    this.headLine,
    this.uRl,
    this.withDoctor,
  });

  UserModel.fromJson({required Map<String, dynamic> dataJson}) {
    name = dataJson['name'];
    address = dataJson['address'];
    uRl = dataJson['uRl'];
    headLine = dataJson['headLine'];
    userGender = dataJson['userGender'];
    userType = dataJson['userType'];
    birthDay = dataJson['birthDay'];
    card = dataJson['card'];
    withDoctor = dataJson['withDoctor'];
    email =dataJson['email'];
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'address': address,
      'uRl': uRl,
      'headLine': headLine,
      'userID': userIdNumber,
      'email': userEmail,
      'userGender': userGender,
      'userType': userType,
      'birthDay': birthDay,
      'card': card,
    };
  }
}

abstract class AuthStates {}

class InitialAppState extends AuthStates {}



class UserCreatedSuccessState extends AuthStates {}

class FailedToCreateUserState extends AuthStates {
  String massage;

  FailedToCreateUserState({required this.massage});
}

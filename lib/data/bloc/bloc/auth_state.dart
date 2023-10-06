import 'package:either_dart/either.dart';

abstract class AuthState {}

class AuthStateLoading extends AuthState {}

class AuthStateInitiate extends AuthState {}

class SignUpResponseState extends AuthState {
  Either<String, String> signUp;
  SignUpResponseState(this.signUp);
}

class LoginResponseState extends AuthState {
  Either<String, String> logIn;
  LoginResponseState(this.logIn);
}

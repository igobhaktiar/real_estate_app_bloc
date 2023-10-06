abstract class AuthEvent {}

class AuthRequest extends AuthEvent {
  String email;
  String password;
  String confirmPassword;
  bool logIn;
  AuthRequest(this.confirmPassword, this.logIn, this.email, this.password);
}

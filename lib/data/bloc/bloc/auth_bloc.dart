import 'package:asc_test/data/bloc/bloc/auth_event.dart';
import 'package:asc_test/data/bloc/bloc/auth_state.dart';
import 'package:asc_test/data/repository/auth_respository.dart';
import 'package:bloc/bloc.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthenticationRepository _repository = AuthenticationRepository();
  AuthBloc() : super(AuthStateInitiate()) {
    on<AuthRequest>((event, emit) async {
      if (event.logIn) {
        var loginResponse =
            await _repository.login(event.email, event.password);
        emit(LoginResponseState(loginResponse));
      } else {
        var signupResponse = await _repository.register(
            event.email, event.password, event.confirmPassword);
        emit(SignUpResponseState(signupResponse));
      }
    });
  }
}

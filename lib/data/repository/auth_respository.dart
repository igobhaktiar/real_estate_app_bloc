import 'package:asc_test/data/datasource/auth_datasource.dart';
import 'package:asc_test/util/exception.dart';
import 'package:either_dart/either.dart';

abstract class IAuthenticationRepository {
  Future<Either<String, String>> register(
      String email, String password, String confirmPassword);
  Future<Either<String, String>> login(String email, String password);
}

class AuthenticationRepository extends IAuthenticationRepository {
  final AuthenticationRemote _datasource = AuthenticationRemote();
  @override
  Future<Either<String, String>> login(String email, String password) async {
    try {
      await _datasource.login(email, password);
      return const Right('Welcome');
    } on Expention catch (ex) {
      return Left(ex.message ?? '');
    }
  }

  @override
  Future<Either<String, String>> register(
      String email, String password, String confirmPassword) async {
    try {
      await _datasource.register(email, password, confirmPassword);
      return const Right('Register done');
    } on Expention catch (ex) {
      return Left(ex.message ?? '');
    }
  }
}

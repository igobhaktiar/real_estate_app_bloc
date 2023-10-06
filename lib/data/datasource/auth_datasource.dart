import 'dart:ffi';

import 'package:asc_test/util/exception.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

abstract class IAutthenticationDatasource {
  Future<void> register(String email, String password, String passwordConfirm);

  Future<void> login(String email, String password);
}

class AuthenticationRemote implements IAutthenticationDatasource {
  @override
  Future<void> login(String email, String password) async {
    try {
      final response = await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: email.trim(), password: password.trim());
    } on FirebaseAuthException catch (ex) {
      Expention(ex.message.toString());
    }
  }

  @override
  Future<void> register(
      String email, String password, String passwordConfirm) async {
    try {
      if (password == passwordConfirm) {
        final response = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(
                email: email.trim(), password: password.trim());
      } else {
        throw Expention('Confirm password is nor correct');
      }
    } on FirebaseAuthException catch (ex) {
      throw Expention(ex.message.toString());
    }
  }
}

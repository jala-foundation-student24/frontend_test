import 'package:flutter/cupertino.dart';
import 'package:frontend_test/src/models/auth_model.dart';
import 'package:frontend_test/src/modules/repositories/auth_repository.dart';

class LoginController with ChangeNotifier{
  String user = '';
  String password = '';

  AuthModel token = AuthModel();

  Future<void> auth(String user, String password) async {

    token = await AuthRepository().login( user: user, password: password);
  }
}
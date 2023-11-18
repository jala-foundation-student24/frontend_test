import 'dart:convert';
import 'package:frontend_test/src/models/auth_model.dart';
import 'package:frontend_test/src/modules/repositories/i_auth_repository.dart';
import 'package:http/http.dart' as http;

class AuthRepository implements IAuthRepository {
  @override
  Future<AuthModel> login({String? user, String? password}) async {
    try {
      Object body = jsonEncode({
        'email': user ?? "",
        'password': password?? ""
      });

      final response = await http.post(
        Uri.parse('https://reqres.in/api/login'),
        body: body,
      );

      return AuthModel(token: '');
    } catch (e) {
      return AuthModel(token: 'error');
    }
  }
}

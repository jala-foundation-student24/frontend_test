import '../../models/auth_model.dart';

abstract class IAuthRepository {
  Future<AuthModel> login({String user, String password});
}


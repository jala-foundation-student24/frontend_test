import 'package:flutter/material.dart';
import 'package:frontend_test/src/modules/login/login_controller.dart';
import 'package:frontend_test/src/modules/login/widgets/card.dart';

import '../../settings/settings_controller.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key, required this.settingsController});

  static const routeName = '/login';
  final SettingsController settingsController;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final LoginController controller = LoginController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/windows.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: CardLogin(loginController: controller,),
      ),
    );
  }
}

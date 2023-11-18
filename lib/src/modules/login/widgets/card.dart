import 'package:flutter/material.dart';
import 'package:frontend_test/src/modules/login/login_controller.dart';

class CardLogin extends StatelessWidget {
  const CardLogin({super.key, required this.loginController});

  final LoginController loginController;

  @override
  Widget build(BuildContext context) {
    final TextEditingController textControllerUser = TextEditingController();
    final TextEditingController textControllerPassword = TextEditingController();

    return Center(
      child: Container(
        height: 250,
        width: 250,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20.0),
            border: Border.all(color: Colors.black, width: 2)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(color: Colors.black, width: 2)),
              height: 45.0,
              child: TextField(
                controller: textControllerUser,
                onChanged: (value) {
                  loginController.user = value;
                },
                style: const TextStyle(color: Colors.black),
                decoration: const InputDecoration(
                  hintText: 'Username',
                  hintStyle: TextStyle(color: Colors.black),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(left: 10, right: 10, bottom: 8),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(color: Colors.black, width: 2)),
              height: 45.0,
              child: TextField(
                controller: textControllerPassword,
                onChanged: (value) {
                  loginController.password = value;
                },
                style: const TextStyle(color: Colors.black),
                decoration: const InputDecoration(
                  hintText: 'Password',
                  hintStyle: TextStyle(color: Colors.black),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(left: 10, right: 10, bottom: 8),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
              ),
              onPressed:() =>  loginController.auth("eve.holt@reqres.in", "cityslicka"),
              child: Container(
                height: 45,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(color: Colors.black, width: 2),
                ),
                child: const Center(child: Text('Login')),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}

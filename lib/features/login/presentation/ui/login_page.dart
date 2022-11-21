import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:poc_clean_arch/features/login/domain/entities/login_param.dart';
import 'package:poc_clean_arch/features/login/presentation/controllers/login_controller.dart';

class LoginPage extends StatelessWidget {
  final _controller = GetIt.I.get<LoginController>();

  LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.blue)),
          child: const Text(
            'Login',
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
          onPressed: () => _controller.login(
              LoginParam(username: 'victoroliveira', password: 'admin@2022')),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teste_wbc/app/features/loginPage/components/login.component.dart';
import 'package:teste_wbc/app/features/loginPage/components/loginButton.component.dart';
import 'package:teste_wbc/app/features/loginPage/components/logo.component.dart';
import 'package:teste_wbc/app/features/loginPage/login.controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        body: _body(),
      );

  Widget _body() => Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const LogoComponent(),
            const Divider(),
            LoginComponent(),
            const Divider(),
            const LoginButton(),
          ],
        ),
      );
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teste_wbc/app/constants/string.constant.dart';
import 'package:teste_wbc/app/features/loginPage/login.controller.dart';

class LoginButton extends GetView<LoginController> {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) => Center(
        child: ElevatedButton(
            onPressed: () => controller.tryLogin(),
            child: Text(StringConstant.login.tr)),
      );
}

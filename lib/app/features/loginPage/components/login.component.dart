import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teste_wbc/app/features/loginPage/login.controller.dart';

class LoginComponent extends GetView<LoginController> {
  LoginComponent({super.key});
  final obscureText = true.obs;
  @override
  Widget build(BuildContext context) => Center(
          child: Column(
        children: [
          _userNameField(),
          const SizedBox(
            height: 7,
          ),
          _passwordField(),
          const SizedBox(height: 12),
        ],
      ));

  Widget _userNameField() => TextField(
        controller: controller.usernameController,
        decoration: const InputDecoration(
          border: OutlineInputBorder(),
        ),
      );

  Widget _passwordField() => Obx(() {
        return TextField(
            obscureText: obscureText.value,
            controller: controller.passwordController,
            decoration: InputDecoration(
              suffixIcon: _obscurePassword(obscureText.value),
              border: const OutlineInputBorder(),
            ));
      });

  _obscurePassword(bool value) => IconButton(
      onPressed: () {
        obscureText.value = !obscureText.value;
      },
      icon: obscureText.value
          ? const Icon(
              Icons.visibility_off,
            )
          : const Icon(Icons.visibility));
}

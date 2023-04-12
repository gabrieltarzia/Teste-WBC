import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teste_wbc/app/routes/app_pages.dart';

class HomeButtonComponent extends StatelessWidget {
  const HomeButtonComponent({super.key});

  @override
  Widget build(BuildContext context) =>
      IconButton(icon:const Icon(Icons.home), onPressed: () => _goToHome);

  void _goToHome() => Get.offAllNamed(MainRoute.home);
}

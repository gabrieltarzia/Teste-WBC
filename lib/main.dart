import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teste_wbc/app/binding/initial.binding.dart';
import 'package:teste_wbc/app/locale/main.locale.dart';
import 'package:teste_wbc/app/routes/app_pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      translations: MainLocale(),
      initialBinding: InitialBinding(),
      initialRoute: MainRoute.login,
      getPages: MainRoute.routes,
      locale: Get.deviceLocale,
      fallbackLocale: const Locale('en', 'US'),
    );
  }
}

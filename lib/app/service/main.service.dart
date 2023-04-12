import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teste_wbc/app/enum/language.enum.dart';
import 'package:teste_wbc/app/model/user.model.dart';
import 'package:teste_wbc/app/routes/app_pages.dart';
import 'package:teste_wbc/app/service/user.service.dart';

class MainService extends GetxService {
  MainService(this.userService);
  final UserService userService;

  double screenHeight = Get.height;
  double screenWidth = Get.width;

  

  void changeLanguage(Locale locale) => Get.updateLocale(locale);

  void login(User user) => userService.currentUser = user;

  void logout() {
    userService.currentUser = User(imageUrl: '', name: '');
    Get.offAllNamed(MainRoute.login);
  }
}

import 'package:get/get.dart';
import 'package:teste_wbc/app/features/loginPage/login.controller.dart';
import 'package:teste_wbc/app/service/main.service.dart';
import 'package:teste_wbc/app/service/user.service.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get
      ..lazyPut(() => LoginController(Get.find()))
      ..lazyPut(() => MainService(Get.find()))
      ..lazyPut(() => UserService());
  }
}

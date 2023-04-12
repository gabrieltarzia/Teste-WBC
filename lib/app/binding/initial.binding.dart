import 'package:get/get.dart';
import 'package:teste_wbc/app/service/main.service.dart';
import 'package:teste_wbc/app/service/user.service.dart';

class InitialBinding extends Bindings {
  @override
  void dependencies() {
    Get
      ..put(UserService())
      ..put(MainService(Get.find()));
  }
}

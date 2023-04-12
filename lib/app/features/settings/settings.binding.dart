import 'package:get/get.dart';
import 'package:teste_wbc/app/features/settings/settings.controller.dart';
import 'package:teste_wbc/app/service/main.service.dart';

class SettingsBinding extends Bindings {
  @override
  void dependencies() {
    Get
      ..lazyPut(() => MainService(Get.find()))
      ..lazyPut(() => SettingsController(Get.find()));
  }
}

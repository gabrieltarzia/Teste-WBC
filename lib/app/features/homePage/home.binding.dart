import 'package:get/get.dart';
import 'package:teste_wbc/app/features/homePage/home.controller.dart';
import 'package:teste_wbc/app/features/core/repository/avaliableBarbecue.repository.dart';
import 'package:teste_wbc/app/features/core/repository/i_avaliableBarbecue.repository.dart';
import 'package:teste_wbc/app/service/user.service.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get
      ..lazyPut(() => HomeController(Get.find(), Get.find(), Get.find()))
      ..lazyPut(() => UserService())
      ..lazyPut<IAvaliableBarbecue>(() => AvaliableBarbecueRepository());
  }
}

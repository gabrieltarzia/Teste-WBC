import 'package:get/get.dart';
import 'package:teste_wbc/app/features/myBarbecue/myBarbecue.controller.dart';
import 'package:teste_wbc/app/features/myBarbecue/repository/i_myBarbecue.repository.dart';
import 'package:teste_wbc/app/features/myBarbecue/repository/myBarbecue.repository.dart';

class MyBarbecueBinding extends Bindings {
  @override
  void dependencies() {
    Get
      ..lazyPut(() => MyBarbecueController(Get.find()))
      ..lazyPut<IMyBarbecue>(() => MyBarbecueRepository());
  }
}

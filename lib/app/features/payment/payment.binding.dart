import 'package:get/get.dart';
import 'package:teste_wbc/app/features/myBarbecue/repository/i_myBarbecue.repository.dart';
import 'package:teste_wbc/app/features/myBarbecue/repository/myBarbecue.repository.dart';
import 'package:teste_wbc/app/features/payment/payment.controller.dart';

class PaymentBinding extends Bindings {
  @override
  void dependencies() {
    Get
      ..lazyPut(() => PaymentController(Get.find()))
      ..lazyPut<IMyBarbecue>(() => MyBarbecueRepository());
  }
}

import 'package:get/get.dart';
import 'package:teste_wbc/app/features/myBarbecue/repository/i_myBarbecue.repository.dart';
import 'package:teste_wbc/app/model/barbecue.model.dart';

class PaymentController extends GetxController {
  PaymentController(this.myBarbecueRepository);
  final status = false.obs;
  Barbecue barbecue = Barbecue(location: '', avaliable: true, price: 0);
  final IMyBarbecue myBarbecueRepository;

  @override
  void onInit() {
    barbecue = Get.arguments;
    super.onInit();
  }
}

import 'package:get/get.dart';
import 'package:teste_wbc/app/model/barbecue.model.dart';
import 'package:teste_wbc/app/features/core/repository/i_avaliableBarbecue.repository.dart';
import 'package:teste_wbc/app/service/main.service.dart';
import 'package:teste_wbc/app/service/user.service.dart';

class HomeController extends GetxController {
  HomeController(this.userService, this.mainService, this._avaliableBarbecue);

  final IAvaliableBarbecue _avaliableBarbecue;
  final UserService userService;
  final MainService mainService;

  final loading = false.obs;

  final avaliableBarbecue = <Barbecue>[].obs;

  @override
  void onInit() {
    _getAvaliableBarbecue();
    super.onInit();
  }

  void _getAvaliableBarbecue() {
    loading(true);
    final result = _avaliableBarbecue.getBarbecue();
    avaliableBarbecue(result);
    loading(false);
  }
}

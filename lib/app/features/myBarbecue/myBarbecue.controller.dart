import 'package:get/get.dart';
import 'package:teste_wbc/app/model/barbecue.model.dart';
import 'repository/i_myBarbecue.repository.dart';

class MyBarbecueController extends GetxController {
  MyBarbecueController(this.myBarbecueRepository);
  final IMyBarbecue myBarbecueRepository;

  final loading = false.obs;
  final myBarbecueList = <Barbecue>[].obs;

  @override
  void onInit() {
    _getMyBarbecue();
    super.onInit();
  }

  void _getMyBarbecue() {
    loading(true);
    final result = myBarbecueRepository.getMyBarbecue();
    myBarbecueList(result);
    loading(false);
  }
}

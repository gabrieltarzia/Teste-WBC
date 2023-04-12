import 'package:get/get.dart';
import 'package:teste_wbc/app/features/myBarbecue/repository/i_myBarbecue.repository.dart';
import 'package:teste_wbc/app/model/barbecue.model.dart';

class MyBarbecueRepository extends GetConnect implements IMyBarbecue {
  List<Barbecue> getMyBarbecue() => [];
}

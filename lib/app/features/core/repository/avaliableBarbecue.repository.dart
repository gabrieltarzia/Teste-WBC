import 'package:get/get.dart';
import 'package:teste_wbc/app/model/barbecue.model.dart';
import 'package:teste_wbc/app/features/core/repository/i_avaliableBarbecue.repository.dart';

class AvaliableBarbecueRepository extends GetConnect
    implements IAvaliableBarbecue {
  List<Barbecue> getBarbecue() => [
        Barbecue(location: 'A', avaliable: true, price: 120),
        Barbecue(location: 'B', avaliable: false, price: 90),
        Barbecue(location: 'B', avaliable: true, price: 150),
        Barbecue(location: 'C', avaliable: true, price: 170),
        Barbecue(location: 'C', avaliable: true, price: 100),
        Barbecue(location: 'C', avaliable: true, price: 90),
        Barbecue(location: 'A', avaliable: false, price: 150),
        Barbecue(location: 'B', avaliable: false, price: 90),
        Barbecue(location: 'B', avaliable: true, price: 130),
        Barbecue(location: 'A', avaliable: true, price: 170),
      ];
}

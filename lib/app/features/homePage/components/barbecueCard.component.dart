import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teste_wbc/app/constants/string.constant.dart';
import 'package:teste_wbc/app/features/homePage/components/barbecueConfirm.component.dart';
import 'package:teste_wbc/app/model/barbecue.model.dart';

class BarbecueCardComponent extends StatelessWidget {
  const BarbecueCardComponent({required this.barbecue, super.key});

  final Barbecue barbecue;

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.all(12),
        child: Card(
          child: ListTile(
            selected: barbecue.avaliable,
            textColor: Colors.grey,
            leading: Text('${StringConstant.block.tr} ${barbecue.location}'),
            title: Text(barbecue.avaliable
                ? StringConstant.avaliable.tr
                : StringConstant.unavaliable.tr),
            subtitle: Text('${StringConstant.currency} ${barbecue.price}'),
            selectedColor: Colors.black,
            selectedTileColor: Colors.green,
            tileColor: Colors.red,
            onTap: () => barbecue.avaliable
                ? Get.bottomSheet(ConfirmBarbecueComponent(barbecue))
                : _showError(),
          ),
        ),
      );

  void _showError() {
    GetSnackBar snackBar = GetSnackBar(
      duration: const Duration(seconds: 3),
      icon: const Icon(
        Icons.error,
        color: Colors.red,
      ),
      message: StringConstant.unavaliable.tr,
    );
    Get.showSnackbar(snackBar);
  }
}

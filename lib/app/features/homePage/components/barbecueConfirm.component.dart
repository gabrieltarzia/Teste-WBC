import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:teste_wbc/app/constants/string.constant.dart';
import 'package:teste_wbc/app/model/barbecue.model.dart';
import 'package:teste_wbc/app/routes/app_pages.dart';

class ConfirmBarbecueComponent extends StatelessWidget {
  const ConfirmBarbecueComponent(this.barbecue, {super.key});

  final Barbecue barbecue;

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.all(7),
        child: Card(
          child: Column(
            children: [
              const Divider(),
              ElevatedButton(
                onPressed: () => _confirm(),
                child: Text(StringConstant.payment.tr),
              ),
              const Spacer(),
              Text(
                StringConstant.confirmschedule.tr,
                style:
                    const TextStyle(fontWeight: FontWeight.w400, fontSize: 27),
              ),
              const Spacer(),
              Text(DateFormat('dd/MM/yyyy').format(DateTime.now())),
              Text(
                StringConstant.currency + barbecue.price.toString(),
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 27),
              ),
              const Spacer(),
              TextButton(
                onPressed: () => Get.back(),
                child: Text(
                  StringConstant.cancel.tr,
                  style: const TextStyle(fontSize: 24),
                ),
              ),
              const Divider(),
            ],
          ),
        ),
      );

  _confirm() {
    Get.offAllNamed(MainRoute.payment, arguments: barbecue);
  }
}

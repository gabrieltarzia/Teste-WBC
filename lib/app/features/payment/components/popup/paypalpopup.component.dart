import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teste_wbc/app/constants/string.constant.dart';
import 'package:teste_wbc/app/features/payment/payment.controller.dart';

class PaypalPopupComponent extends GetView<PaymentController> {
  const PaypalPopupComponent({super.key});

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.all(7),
        child: Card(
          child: Column(
            children: [
              const Divider(),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Text(StringConstant.summary.tr.toUpperCase()),
              ),
              const Divider(),
              const Spacer(),
              Text(
                  '${StringConstant.subtotal.tr}: ${StringConstant.currency} ${controller.barbecue.price}'),
              Text(
                  '${StringConstant.fee.tr} : ${StringConstant.currency} ${controller.barbecue.price * .01}'),
              const Spacer(),
              Text(
                  '${StringConstant.total.tr.toUpperCase()} : ${StringConstant.currency} ${controller.barbecue.price * .01 + controller.barbecue.price}'),
              const Divider(),
              ElevatedButton.icon(
                onPressed: () {
                  controller.status(true);
                  Get.back();
                },
                icon: const Icon(Icons.paypal),
                label: Text(
                  StringConstant.paypal.tr,
                  style: const TextStyle(fontSize: 18),
                ),
              ),
              TextButton(
                onPressed: () => Get.back(),
                child: Text(
                  StringConstant.cancel.tr,
                  style: const TextStyle(fontSize: 18),
                ),
              ),
              const Divider(),
            ],
          ),
        ),
      );
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teste_wbc/app/constants/string.constant.dart';
import 'package:teste_wbc/app/features/payment/payment.controller.dart';

class PaymentStatusComponent extends GetView<PaymentController> {
  const PaymentStatusComponent({super.key});

  @override
  Widget build(BuildContext context) => Card(
        child: Obx(() {
          return ListTile(
              leading: controller.status.value
                  ? const Icon(
                      Icons.check_circle,
                      color: Colors.green,
                    )
                  : const CircularProgressIndicator(),
              title: Text(
                controller.status.value
                    ? StringConstant.paymentApproved.tr
                    : StringConstant.waitingPayment.tr,
                textAlign: TextAlign.center,
              ));
        }),
      );
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teste_wbc/app/enum/paymentMethod.enum.dart';
import 'package:teste_wbc/app/features/payment/components/popup/creditCardpopup.component.dart';
import 'package:teste_wbc/app/features/payment/components/popup/cryptoPopup.component.dart';
import 'package:teste_wbc/app/features/payment/components/popup/paypalpopup.component.dart';
import 'package:teste_wbc/app/features/payment/components/popup/pixPopup.component.dart';
import 'package:teste_wbc/app/features/payment/payment.controller.dart';

class PaymentCardComponent extends GetView<PaymentController> {
  const PaymentCardComponent(
      {super.key,
      required this.icon,
      required this.name,
      required this.description,
      required this.paymentMethod});

  final IconData icon;
  final String name;
  final String description;
  final PaymentMethod paymentMethod;

  @override
  Widget build(BuildContext context) => Padding(
      padding: const EdgeInsets.all(7),
      child: Card(
        child: ListTile(
          selected: controller.status.value,
          leading: Icon(icon),
          title: Text(name),
          subtitle: Text(description),
          onTap: () {
            switch (paymentMethod) {
              case PaymentMethod.creditCard:
                Get.bottomSheet(const CreditCardPopupComponent());
                break;
              case PaymentMethod.pix:
                Get.bottomSheet(const PixPopupComponent());
                break;
              case PaymentMethod.crypto:
                Get.bottomSheet(const CryptoPopupComponent());
                break;
              case PaymentMethod.paypal:
                Get.bottomSheet(const PaypalPopupComponent());
                break;
            }
          },
        ),
      ));
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teste_wbc/app/constants/string.constant.dart';

import 'package:teste_wbc/app/features/payment/payment.controller.dart';

class CreditCardPopupComponent extends GetView<PaymentController> {
  const CreditCardPopupComponent({super.key});

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.all(7),
        child: Card(
          child: ListView(
            children: [
              const Divider(),
              Padding(
                padding: const EdgeInsets.all(8),
                child:
                    Text(StringConstant.creditCardDescription.tr.toUpperCase()),
              ),
              const Divider(),
              Text(StringConstant.cardholderName.tr,
                  textAlign: TextAlign.center),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(border: OutlineInputBorder()),
                ),
              ),
              Text(
                StringConstant.cardNumber.tr,
                textAlign: TextAlign.center,
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      suffixIcon: Icon(Icons.credit_card)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: const [
                    Flexible(
                      flex: 3,
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            suffixIcon: Icon(Icons.arrow_drop_down)),
                      ),
                    ),
                    Flexible(
                      flex: 3,
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            suffixIcon: Icon(Icons.arrow_drop_down)),
                      ),
                    ),
                    Flexible(
                      flex: 3,
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(Icons.info)),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: ElevatedButton.icon(
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.purple),
                  onPressed: () {
                    controller.status(true);
                    Get.back();
                  },
                  icon: const Icon(Icons.credit_card),
                  label: Text(
                    StringConstant.payWithCard.tr,
                    style: const TextStyle(fontSize: 18),
                  ),
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

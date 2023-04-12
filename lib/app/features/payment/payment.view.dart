import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teste_wbc/app/constants/string.constant.dart';
import 'package:teste_wbc/app/enum/paymentMethod.enum.dart';
import 'package:teste_wbc/app/features/payment/components/paymentCard.component.dart';
import 'package:teste_wbc/app/features/payment/components/paymentStatus.component.dart';
import 'package:teste_wbc/app/features/payment/payment.controller.dart';
import 'package:teste_wbc/app/routes/app_pages.dart';

class PaymentView extends GetView<PaymentController> {
  PaymentView({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(),
        body: Obx(() => controller.status.value ? _approvedBody() : _body()),
      );

  Widget _approvedBody() => Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Divider(),
            const PaymentStatusComponent(),
            const Divider(),
            _button(),
          ],
        ),
      );

  Widget _body() => Padding(
        padding: const EdgeInsets.all(12),
        child: ListView(
          shrinkWrap: true,
          children: [
            const Divider(),
            Text(
              StringConstant.payment.tr.toUpperCase(),
              style: const TextStyle(fontSize: 18),
            ),
            const Divider(),
            PaymentCardComponent(
              icon: Icons.credit_card,
              name: StringConstant.creditCard.tr,
              description: StringConstant.creditCardDescription.tr,
              paymentMethod: PaymentMethod.creditCard,
            ),
            PaymentCardComponent(
              icon: Icons.currency_bitcoin,
              name: StringConstant.cryptoCurrency.tr,
              description: StringConstant.cryptoCurrencyDescription.tr,
              paymentMethod: PaymentMethod.crypto,
            ),
            PaymentCardComponent(
              icon: Icons.paypal,
              name: StringConstant.paypal.tr,
              description: StringConstant.paypalDescription.tr,
              paymentMethod: PaymentMethod.paypal,
            ),
            PaymentCardComponent(
              icon: Icons.pix,
              name: StringConstant.pix.tr,
              description: StringConstant.pixDescription.tr,
              paymentMethod: PaymentMethod.pix,
            ),
            const Divider(),
            const PaymentStatusComponent(),
            const Divider(),
            _button(),
          ],
        ),
      );

  Widget _button() => Obx(() {
        return controller.status.value
            ? ElevatedButton(
                onPressed: () {
                  controller.myBarbecueRepository
                      .getMyBarbecue()
                      .add(controller.barbecue);
                  controller.barbecue.avaliable = true;
                  Get.offAllNamed(MainRoute.home);
                },
                child: Text(StringConstant.confirm.tr))
            : ElevatedButton(
                onPressed: () {
                  Get.offAllNamed(MainRoute.home);
                },
                child: Text(StringConstant.cancel.tr));
      });
}

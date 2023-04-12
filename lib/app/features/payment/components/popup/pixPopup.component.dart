import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teste_wbc/app/constants/string.constant.dart';
import 'package:teste_wbc/app/constants/url.constant.dart';
import 'package:teste_wbc/app/features/core/components/loading.component.dart';
import 'package:teste_wbc/app/features/payment/payment.controller.dart';

class PixPopupComponent extends GetView<PaymentController> {
  const PixPopupComponent({super.key});

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.all(7),
        child: Card(
          child: Column(
            children: [
              const Divider(),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Image.network(UrlConstant.qrCodeExample,
                    loadingBuilder: (context, child, progress) =>
                        progress == null ? child : const LoadingComponent()),
              ),
              const Spacer(),
              const Divider(),
              ElevatedButton.icon(
                onPressed: () {
                  controller.status(true);
                  Get.back();
                },
                icon: const Icon(Icons.pix),
                label: Text(
                  StringConstant.confirm.tr,
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

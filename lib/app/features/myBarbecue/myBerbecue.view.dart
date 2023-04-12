import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teste_wbc/app/features/homePage/components/barbecueCard.component.dart';
import 'package:teste_wbc/app/features/myBarbecue/myBarbecue.controller.dart';

class MyBarbecueView extends GetView<MyBarbecueController> {
  const MyBarbecueView({super.key});

  @override
  Widget build(BuildContext context) =>
      Scaffold(appBar: AppBar(), body: _body());

  Widget _body() => controller.myBarbecueList.isNotEmpty
      ? Obx(() {
          return ListView.builder(
            itemCount: controller.myBarbecueList.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              final iten = controller.myBarbecueList[index];
              return BarbecueCardComponent(barbecue: iten);
            },
          );
        })
      : const Center();
}

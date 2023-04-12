import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teste_wbc/app/constants/string.constant.dart';
import 'package:teste_wbc/app/features/core/components/loading.component.dart';
import 'package:teste_wbc/app/features/core/components/menu/mainDrawer.component.dart';
import 'package:teste_wbc/app/features/homePage/components/barbecueCard.component.dart';
import 'package:teste_wbc/app/features/homePage/home.controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(StringConstant.welcome.tr +
              controller.userService.currentUser.name),
        ),
        body: Obx(() => _body()),
        drawer: MainDrawerComponent(
            user: controller.userService.currentUser,
            logoutFunction: controller.mainService.logout),
      );

  Widget _body() => controller.avaliableBarbecue.isNotEmpty
      ? ListView.builder(
          itemCount: controller.avaliableBarbecue.length,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            final iten = controller.avaliableBarbecue[index];
            return BarbecueCardComponent(barbecue: iten);
          },
        )
      : const LoadingComponent();
}

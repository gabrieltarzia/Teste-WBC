import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teste_wbc/app/constants/string.constant.dart';
import 'package:teste_wbc/app/constants/url.constant.dart';
import 'package:teste_wbc/app/features/homePage/home.controller.dart';
import 'package:teste_wbc/app/model/user.model.dart';
import 'package:teste_wbc/app/routes/app_pages.dart';

class MainDrawerComponent extends GetView<HomeController> {
  const MainDrawerComponent(
      {Key? key, required this.user, required this.logoutFunction})
      : super(key: key);

  final User user;
  final Function logoutFunction;

  @override
  Widget build(BuildContext context) => Drawer(
        child: ListView(
          padding: const EdgeInsets.all(7),
          children: [
            DrawerHeader(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                      radius: controller.mainService.screenWidth * .1,
                      backgroundImage: user.imageUrl != ''
                          ? NetworkImage(user.imageUrl)
                          : const NetworkImage(UrlConstant.blankUserPath)),
                  Text(user.name)
                ],
              ),
            ),
            ListTile(
              title: Text(StringConstant.myBarbecue.tr),
              onTap: () {
                Get.toNamed(MainRoute.myBarbecue);
              },
            ),
            ListTile(
              title: Text(StringConstant.settings.tr),
              onTap: () {
                Get.toNamed(MainRoute.settings);
              },
            ),
            ListTile(
              title: Text(StringConstant.logout.tr),
              onTap: () {
                logoutFunction();
              },
            ),
          ],
        ),
      );
}

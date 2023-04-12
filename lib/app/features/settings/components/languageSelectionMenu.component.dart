import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teste_wbc/app/constants/string.constant.dart';
import 'package:teste_wbc/app/features/settings/settings.controller.dart';
import 'package:teste_wbc/app/service/main.service.dart';

class LanguageSelectionMenuComponent extends GetView<MainService> {
  const LanguageSelectionMenuComponent({super.key});

  @override
  Widget build(BuildContext context) => ElevatedButton(
      onPressed: () => _openLanguageSelection(),
      child: Text(StringConstant.changeLanguage.tr));

  _selectionMenu() => Column(
        children: [
          _menuIten(const Locale('pt', 'BR'), StringConstant.brazilian.tr),
          _menuIten(const Locale('en', 'US'), StringConstant.english.tr),
          const Divider(),
          TextButton(
              onPressed: _closeMenu,
              child: Text(
                StringConstant.close.tr,
                style: const TextStyle(color: Colors.black),
              ))
        ],
      );

  void _openLanguageSelection() => Get.defaultDialog(
      title: StringConstant.changeLanguage.tr, content: _selectionMenu());

  void _changeLanguage(Locale locale) => controller.changeLanguage(
        locale,
      );

  void _closeMenu() => Get.back();

  Widget _menuIten(Locale locale, String text) => TextButton(
      onPressed: () {
        _changeLanguage(
          locale,
        );
        _closeMenu();
      },
      child: Text(text));
}

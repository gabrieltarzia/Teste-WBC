import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teste_wbc/app/features/settings/settings.controller.dart';
import 'components/languageSelectionMenu.component.dart';

class SettingsView extends GetView<SettingsController> {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        body: _body(),
        appBar: AppBar(),
      );

  Widget _body() => Padding(
        padding: const EdgeInsets.all(12),
        child: Center(
          child: ListView(
            shrinkWrap: true,
            children: const [LanguageSelectionMenuComponent()],
          ),
        ),
      );
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teste_wbc/app/constants/string.constant.dart';
import 'package:teste_wbc/app/constants/url.constant.dart';
import 'package:teste_wbc/app/enum/errorType.enum.dart';
import 'package:teste_wbc/app/model/user.model.dart';
import 'package:teste_wbc/app/routes/app_pages.dart';
import 'package:teste_wbc/app/service/main.service.dart';

class LoginController extends GetxController {
  LoginController(this.mainService);
  final MainService mainService;
  final loading = false.obs;

  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void tryLogin() {
    loading(true);
    usernameController.text.isEmpty
        ? _showError(ErrorType.noUsername)
        : {
            mainService.login(User(
                name: usernameController.text,
                imageUrl: UrlConstant.blankUserPath)),
            _goToHome()
          };
    loading(false);
  }

  void _showError(ErrorType error) async {
    GetSnackBar snackBar = GetSnackBar(
      duration: const Duration(seconds: 3),
      icon: const Icon(
        Icons.error,
        color: Colors.red,
      ),
      message: await getErrorMessage(error),
    );
    Get.showSnackbar(snackBar);
  }

  Future<String> getErrorMessage(ErrorType error) async {
    String errorMessage;
    switch (error) {
      case ErrorType.noUsername:
        errorMessage = StringConstant.noUsernameError.tr;

        break;
      case ErrorType.noPassword:
        errorMessage = StringConstant.noPasswordError.tr;
        break;
      case ErrorType.blankFields:
        errorMessage = StringConstant.blankFieldsError.tr;

        break;
    }
    return errorMessage;
  }

  void _goToHome() => Get.offAllNamed(MainRoute.home);
}

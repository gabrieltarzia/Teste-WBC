import 'package:get/get.dart';
import 'package:teste_wbc/app/features/homePage/home.binding.dart';
import 'package:teste_wbc/app/features/homePage/home.view.dart';
import 'package:teste_wbc/app/features/loginPage/login.binding.dart';
import 'package:teste_wbc/app/features/loginPage/login.view.dart';
import 'package:teste_wbc/app/features/myBarbecue/myBarbecue.binding.dart';
import 'package:teste_wbc/app/features/myBarbecue/myBerbecue.view.dart';
import 'package:teste_wbc/app/features/payment/payment.binding.dart';
import 'package:teste_wbc/app/features/payment/payment.view.dart';
import 'package:teste_wbc/app/features/settings/settings.binding.dart';
import 'package:teste_wbc/app/features/settings/settings.view.dart';

class MainRoute {
  static const login = '/login';
  static const home = '/home';
  static const settings = '/settings';
  static const payment = '/payment';
  static const myBarbecue = '/myBarbecue';

  static final List<GetPage<dynamic>> routes = [
    GetPage(
      name: login,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: home,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: settings,
      page: () => const SettingsView(),
      binding: SettingsBinding(),
    ),
    GetPage(
      name: payment,
      page: () => PaymentView(),
      binding: PaymentBinding(),
    ),
    GetPage(
      name: myBarbecue,
      page: () => const MyBarbecueView(),
      binding: MyBarbecueBinding(),
    ),
  ];
}

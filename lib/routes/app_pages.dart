import 'package:bdki_project_test/features/home/views/home_view.dart';
import 'package:bdki_project_test/features/login/views/login_view.dart';
import 'package:bdki_project_test/features/splash/views/splash_view.dart';
import 'package:get/get.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => SplashView(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
    ),
  ];
}

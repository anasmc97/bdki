import 'package:bdki_project_test/features/home/controllers/home_controller.dart';
import 'package:bdki_project_test/features/splash/controllers/splash_controller.dart';
import 'package:bdki_project_test/features/login/controllers/login_controller.dart';
import 'package:get/get.dart';

class RepositoryInjection {
  void register() {
    Get.lazyPut<SplashController>(
      () => SplashController(),
    );
    Get.lazyPut<LoginController>(
      () => LoginController(),
    );
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
  }
}

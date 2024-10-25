import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    navigateToHome();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void navigateToHome() {
    Future.delayed(
      const Duration(seconds: 3),
      () {
        Get.offNamed('/login');
      },
    );
  }
}

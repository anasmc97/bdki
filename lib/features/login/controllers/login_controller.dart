import 'dart:ui';

import 'package:get/get.dart';

class LoginController extends GetxController {
  var indexPage = 0.obs;

  @override
  void onInit() {
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

  void languageToId() {
    Get.updateLocale(const Locale('id', 'ID'));
  }

  void languageToEn() {
    Get.updateLocale(const Locale('en', 'US'));
  }
}

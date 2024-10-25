import 'package:bdki_project_test/commons/colors.dart';
import 'package:bdki_project_test/features/login/controllers/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Body extends StatelessWidget {
  const Body({
    super.key,
    required this.loginController,
  });

  final LoginController loginController;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        padding: const EdgeInsets.only(top: 40),
        children: [
          SizedBox(
            height: 300,
            width: double.infinity,
            child: PageView.builder(
              itemCount: 3,
              onPageChanged: (index) => loginController.indexPage.value = index,
              itemBuilder: (context, index) {
                return Image.asset(
                  'assets/images/monas.png',
                  fit: BoxFit.contain,
                );
              },
            ),
          ),
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Text(
              'title'.tr,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w700,
                foreground: Paint()
                  ..shader = const LinearGradient(
                          colors: [AppColors.secondary, AppColors.primary])
                      .createShader(
                    const Rect.fromLTWH(0, 0, 200, 70),
                  ),
              ),
            ),
          ),
          const SizedBox(height: 16),
          Obx(
            () => Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                3,
                (index) => Container(
                  margin: const EdgeInsets.symmetric(horizontal: 3),
                  width: 5,
                  height: 5,
                  decoration: BoxDecoration(
                    color: index == loginController.indexPage.value
                        ? AppColors.secondary
                        : AppColors.secondary.withOpacity(0.3),
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 16),
          GestureDetector(
            onTap: () => Get.offAllNamed('/home'),
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 40),
              padding: const EdgeInsets.symmetric(horizontal: 38, vertical: 10),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [AppColors.secondary, AppColors.primary],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                border: Border.all(color: AppColors.yellow, width: 2),
                borderRadius: BorderRadius.circular(50),
              ),
              child: Center(
                child: Text(
                  'continue'.tr,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 16),
          GestureDetector(
            onTap: () => Get.offAllNamed('/home'),
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 40),
              padding: const EdgeInsets.all(2),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                gradient: const LinearGradient(
                  colors: [AppColors.yellow, AppColors.secondary],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 38, vertical: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Center(
                  child: Text(
                    'continue'.tr,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: AppColors.secondary,
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

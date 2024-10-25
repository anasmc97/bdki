import 'package:bdki_project_test/commons/colors.dart';
import 'package:bdki_project_test/features/home/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EventWidget extends StatelessWidget {
  const EventWidget({
    super.key,
    required this.homeController,
  });
  final HomeController homeController;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.only(top: 20, left: 32),
          height: 250,
          width: Get.width,
          child: PageView.builder(
            controller: PageController(viewportFraction: 0.8),
            padEnds: false,
            itemCount: homeController.dataEvent.length,
            onPageChanged: (index) {
              homeController.indexIndicatorEvent.value = index;
            },
            itemBuilder: (context, index) {
              var data = homeController.dataEvent[index];
              return Container(
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.only(right: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [AppColors.primary, Colors.white.withOpacity(0.5)],
                  ),
                ),
                child: Column(
                  children: [
                    Container(
                      height: 150,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white, width: 3),
                        borderRadius: BorderRadius.circular(12),
                        image: DecorationImage(
                          image: AssetImage("${data['image']}"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 2,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        gradient: const LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [AppColors.secondary, AppColors.primary],
                        ),
                      ),
                      child: Text(
                        'more'.tr,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
        Obx(
          () => Container(
            padding: const EdgeInsets.only(top: 5, bottom: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(homeController.dataEvent.length, (index) {
                return Container(
                  margin: const EdgeInsets.symmetric(horizontal: 3),
                  height: 5,
                  width: 5,
                  decoration: BoxDecoration(
                    color: index == homeController.indexIndicatorEvent.value
                        ? AppColors.secondary
                        : AppColors.secondary.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(50),
                  ),
                );
              }),
            ),
          ),
        ),
      ],
    );
  }
}

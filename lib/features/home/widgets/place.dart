import 'package:bdki_project_test/commons/colors.dart';
import 'package:bdki_project_test/features/home/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Place extends StatelessWidget {
  const Place({
    super.key,
    required this.homeController,
  });
  final HomeController homeController;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 20, left: 16),
          height: 170,
          width: Get.width,
          child: Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 16),
                height: 120,
                width: 80,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/icons/did_you_know.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: PageView.builder(
                  controller: PageController(viewportFraction: 0.5),
                  padEnds: false,
                  itemCount: homeController.dataPlace.length,
                  onPageChanged: (index) =>
                      homeController.indexIndicatorPlace.value = index,
                  itemBuilder: (context, index) {
                    var data = homeController.dataPlace[index];
                    return Container(
                      margin: const EdgeInsets.only(
                        right: 10,
                        left: 10,
                        bottom: 6,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.25),
                            blurRadius: 5,
                            offset: const Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 100,
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                              ),
                              image: DecorationImage(
                                image: AssetImage("${data['image']}"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              padding: const EdgeInsets.all(8),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "${data['title']}".tr,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  const Spacer(),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 4,
                                          vertical: 1,
                                        ),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(50),
                                          border: Border.all(
                                              color: AppColors.yellow,
                                              width: 1),
                                          gradient: const LinearGradient(
                                            begin: Alignment.topCenter,
                                            end: Alignment.bottomCenter,
                                            colors: [
                                              AppColors.secondary,
                                              AppColors.primary
                                            ],
                                          ),
                                        ),
                                        child: Text(
                                          'detail'.tr,
                                          style: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 8,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
        Obx(
          () => Container(
            padding: const EdgeInsets.only(top: 10, bottom: 6),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(homeController.dataPlace.length, (index) {
                return Container(
                  margin: const EdgeInsets.symmetric(horizontal: 3),
                  height: 5,
                  width: 5,
                  decoration: BoxDecoration(
                    color: index == homeController.indexIndicatorPlace.value
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

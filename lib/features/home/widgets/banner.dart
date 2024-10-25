import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: Get.width,
      child: PageView.builder(
        controller: PageController(viewportFraction: 0.85),
        itemCount: 2,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.only(right: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: const DecorationImage(
                image: AssetImage('assets/images/banner.png'),
                fit: BoxFit.cover,
              ),
            ),
          );
        },
      ),
    );
  }
}

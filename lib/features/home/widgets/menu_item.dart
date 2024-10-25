import 'package:bdki_project_test/commons/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MenuItem extends StatelessWidget {
  final String icon;
  final String title;
  const MenuItem({
    super.key,
    required this.icon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: const LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [AppColors.yellow, AppColors.secondary],
              ),
            ),
            child: Container(
              margin: const EdgeInsets.all(2),
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.white.withOpacity(0.5), Colors.white],
                ),
              ),
              child: Center(
                child: Image.asset(
                  icon,
                  width: 50,
                  height: 50,
                ),
              ),
            ),
          ),
          const SizedBox(height: 5),
          Text(
            title.tr,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 9,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}

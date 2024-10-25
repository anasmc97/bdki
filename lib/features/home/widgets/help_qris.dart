import 'package:bdki_project_test/commons/colors.dart';
import 'package:flutter/material.dart';

class HelpQris extends StatelessWidget {
  const HelpQris({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        // Help Button
        Align(
          alignment: Alignment.bottomRight,
          child: InkWell(
            onTap: () {},
            borderRadius: BorderRadius.circular(50),
            child: Padding(
              padding: const EdgeInsets.only(bottom: 50),
              child: Image.asset('assets/icons/help_police.png', height: 100),
            ),
          ),
        ),

        // Qris Button
        Positioned(
          bottom: 10,
          child: Container(
            height: 70,
            width: 70,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              border: Border.all(color: Colors.white, width: 3),
              gradient: const LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [AppColors.secondary, AppColors.primary],
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.08),
                  blurRadius: 16,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: Image.asset('assets/icons/ic_qris.png', height: 18),
          ),
        )
      ],
    );
  }
}

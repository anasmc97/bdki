import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:get/get.dart';
import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  SplashView({super.key});
  final splashController = Get.put(SplashController());
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/bg_splash.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Center(
                child: Image.asset(
                  'assets/images/logo.png',
                  width: 286,
                ),
              ),
            ),
            Image.asset(
              'assets/images/ojk_lps.png',
              width: 100,
            ),
            const SizedBox(height: 16),
            Text(
              'powered by BANK DKI\n2023',
              style: GoogleFonts.inter().copyWith(
                fontSize: 11,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

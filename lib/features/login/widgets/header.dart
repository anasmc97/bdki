import 'package:bdki_project_test/features/login/controllers/login_controller.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
    required this.loginController,
  });

  final LoginController loginController;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(50),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.25),
                  blurRadius: 4,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    loginController.languageToId();
                  },
                  child: Image.asset('assets/icons/id_flag.png', height: 20),
                ),
                const SizedBox(width: 10),
                GestureDetector(
                    onTap: () {
                      loginController.languageToEn();
                    },
                    child: Image.asset('assets/icons/en_flag.png', height: 20)),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 11, vertical: 5),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(50),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.25),
                  blurRadius: 4,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: Row(
              children: [
                Image.asset('assets/icons/ic_card.png', height: 11),
                const SizedBox(width: 5),
                Image.asset('assets/icons/jakcard.png', height: 11),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:bdki_project_test/commons/colors.dart';
import 'package:bdki_project_test/features/login/controllers/login_controller.dart';
import 'package:bdki_project_test/features/login/widgets/body.dart';
import 'package:bdki_project_test/features/login/widgets/header.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class LoginView extends GetView<LoginController> {
  final loginController = Get.put(LoginController());
  LoginView({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: InkWell(
          onTap: () {},
          borderRadius: BorderRadius.circular(50),
          child: Image.asset('assets/icons/help_police.png', height: 100),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
        body: SafeArea(
          child: Column(
            children: [
              Header(loginController: loginController),
              Body(loginController: loginController),
            ],
          ),
        ),
      ),
    );
  }
}

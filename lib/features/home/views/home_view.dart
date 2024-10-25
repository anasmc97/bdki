import 'package:bdki_project_test/features/home/widgets/banner.dart';
import 'package:bdki_project_test/features/home/widgets/event.dart';
import 'package:bdki_project_test/features/home/widgets/header.dart';
import 'package:bdki_project_test/features/home/widgets/help_qris.dart';
import 'package:bdki_project_test/features/home/widgets/menu.dart';
import 'package:bdki_project_test/features/home/widgets/place.dart';
import 'package:bdki_project_test/features/home/widgets/title_menu.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  final homeController = Get.put(HomeController());

  HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: const HelpQris(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: Container(
          height: 50,
          padding: const EdgeInsets.symmetric(horizontal: 32),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.08),
                blurRadius: 16,
                offset: const Offset(0, -2),
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset('assets/icons/ic_home.png', height: 24),
              const SizedBox(width: 32.0),
              Image.asset('assets/icons/ic_profile.png', height: 24),
            ],
          ),
        ),
        body: ListView(
          padding: const EdgeInsets.all(0),
          children: [
            const Header(),
            const Menu(),
            const BannerWidget(),
            TitleMenu(
                title: "title_1",
                subtitle: "subtitle_1",
                icon: 'assets/icons/landmark.png'),
            Place(homeController: homeController),
            TitleMenu(
                title: "title_2",
                subtitle: "subtitle_2",
                icon: 'assets/icons/landmark.png'),
            EventWidget(homeController: homeController),
          ],
        ),
      ),
    );
  }
}

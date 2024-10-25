import 'package:bdki_project_test/features/home/widgets/menu_item.dart';
import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      margin: const EdgeInsets.symmetric(horizontal: 32, vertical: 20),
      child: const Wrap(
        direction: Axis.vertical,
        runAlignment: WrapAlignment.spaceBetween,
        children: [
          MenuItem(
            icon: 'assets/icons/location.png',
            title: "menu_1",
          ),
          MenuItem(
            icon: 'assets/icons/topup.png',
            title: "menu_2",
          ),
          MenuItem(
            icon: 'assets/icons/cards.png',
            title: "menu_3",
          ),
          MenuItem(
            icon: 'assets/icons/calender.png',
            title: "menu_4",
          ),
        ],
      ),
    );
  }
}

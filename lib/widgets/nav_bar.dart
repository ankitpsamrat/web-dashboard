// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:web_dashboard/utils/colors.dart';
import 'package:web_dashboard/utils/constants.dart';
import 'package:web_dashboard/utils/styles.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: mobileNavBar(),
      desktop: deskTopNavBar(),
    );
  }
}

Widget mobileNavBar() {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 20),
    height: 70,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Icon(Icons.menu),
        navLogo(),
      ],
    ),
  );
}

Widget deskTopNavBar() {
  return Container(
    margin: const EdgeInsets.symmetric(
      horizontal: 20,
      vertical: 10,
    ),
    height: 70,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        navLogo(),
        Row(
          children: [
            navButton('Features'),
            navButton('About Us'),
            navButton('Pricing'),
            navButton('Feedback')
          ],
        ),
        SizedBox(
          height: 45,
          child: ElevatedButton(
            style: borderedButtonStyle,
            onPressed: () {},
            child: Text(
              'Request a Demo',
              style: TextStyle(color: AppColors.primary),
            ),
          ),
        )
      ],
    ),
  );
}

Widget navButton(String text) {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 4),
    child: TextButton(
      onPressed: () {},
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 18,
        ),
      ),
    ),
  );
}

Widget navLogo() {
  return Container(
    width: 110,
    decoration: const BoxDecoration(
      image: DecorationImage(
        image: AssetImage(logo),
        fit: BoxFit.contain,
      ),
    ),
  );
}

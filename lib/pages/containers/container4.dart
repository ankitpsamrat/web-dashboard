// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:web_dashboard/utils/constants.dart';
import 'package:web_dashboard/widgets/common_container.dart';

class Container4 extends StatefulWidget {
  const Container4({super.key});

  @override
  State<Container4> createState() => _Container4State();
}

class _Container4State extends State<Container4> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: mobileContainer4(),
      desktop: desktopContainer4(),
    );
  }

  //================ MOBILE ===============

  Widget mobileContainer4() {
    return commonContainerMobile(
      'FREE SOME COST',
      'Save cost \nfor you \nand family',
      'Tellus lacus morbi sagittis lacus in. Amet nisl at mauris enim accumsan nisi, tincidunt vel. Enim ipsum, amet quis ullamcorper eget ut.',
      illustration2,
      true,
    );
  }

  //============== DESKTOP =============

  Widget desktopContainer4() {
    return commonContainer(
      'FREE SOME COST',
      'Save cost \nfor you \nand family',
      'Tellus lacus morbi sagittis lacus in. Amet nisl at \nmauris enim accumsan nisi, tincidunt vel. \nEnim ipsum, amet quis ullamcorper eget ut.',
      illustration2,
      true,
    );
  }
}

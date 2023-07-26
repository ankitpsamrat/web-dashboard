// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:web_dashboard/utils/constants.dart';
import 'package:web_dashboard/widgets/common_container.dart';

class Container5 extends StatefulWidget {
  const Container5({super.key});

  @override
  State<Container5> createState() => _Container5State();
}

class _Container5State extends State<Container5> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: mobileContainer5(),
      desktop: desktopContainer5(),
    );
  }

  //================ MOBILE ===============

  Widget mobileContainer5() {
    return commonContainerMobile(
      'USE ANYTIME',
      'Use anytime \nwhen you \nneed',
      'Tellus lacus morbi sagittis lacus in. Amet nisl at mauris enim accumsan nisi, tincidunt vel. Enim ipsum, amet quis ullamcorper eget ut.',
      illustration3,
      false,
    );
  }

  //============== DESKTOP =============

  Widget desktopContainer5() {
    return commonContainer(
      'USE ANYTIME',
      'Use anytime \nwhen you \nneed',
      'Tellus lacus morbi sagittis lacus in. Amet nisl at \nmauris enim accumsan nisi, tincidunt vel. \nEnim ipsum, amet quis ullamcorper eget ut.',
      illustration3,
      false,
    );
  }
}

// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:web_dashboard/utils/constants.dart';
import 'package:web_dashboard/widgets/common_container.dart';

class Container3 extends StatefulWidget {
  const Container3({super.key});

  @override
  State<Container3> createState() => _Container3State();
}

class _Container3State extends State<Container3> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: mobileContainer3(),
      desktop: desktopContainer3(),
    );
  }

  //================ MOBILE ===============

  Widget mobileContainer3() {
    return commonContainerMobile(
      'ALWAYS ONLINE',
      'Real-time \nsupport \nwith cloud',
      'Tellus lacus morbi sagittis lacus in. Amet nisl at mauris enim accumsan nisi, tincidunt vel. Enim ipsum, amet quis ullamcorper eget ut.',
      illustration1,
      false,
    );
  }

  //============== DESKTOP =============

  Widget desktopContainer3() {
    return commonContainer(
      'ALWAYS ONLINE',
      'Real-time \nsupport \nwith cloud',
      'Tellus lacus morbi sagittis lacus in. Amet nisl at \nmauris enim accumsan nisi, tincidunt vel. \nEnim ipsum, amet quis ullamcorper eget ut.',
      illustration1,
      false,
    );
  }
}

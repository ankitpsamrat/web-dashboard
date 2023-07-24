import 'package:flutter/material.dart';
import 'package:web_dashboard/pages/container1.dart';
import 'package:web_dashboard/utils/constants.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) { 
    w = MediaQuery.of(context).size.width;
    h = MediaQuery.of(context).size.height;

    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // NavBar(),
            SizedBox(height: 100),
            Container1(),
            // Container2(),
            // Container3(),
            // Container4(),
            // Container5()

            // MainContent()
          ],
        ),
      ),
    );
  }
}

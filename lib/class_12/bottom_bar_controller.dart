import 'package:flutter/material.dart';
import 'package:practice_class/class_12/home.dart';
import 'package:practice_class/class_8/bottom_bar.dart';

class BottomBarController extends StatefulWidget {
  const BottomBarController({super.key});

  @override
  State<BottomBarController> createState() => _BottomBarControllerState();
}

List<Widget> screens = [
  const Home(),
  Container(),
  Container(),
  Container(),
];

class _BottomBarControllerState extends State<BottomBarController> {
  int selectedIndex = 0;

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selectedIndex],
      bottomNavigationBar: BottomBar(
        onTap: onItemTapped,
        currentIndex: selectedIndex,
      ),
    );
  }
}

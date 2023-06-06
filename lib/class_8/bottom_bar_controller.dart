import 'package:flutter/material.dart';
import 'package:practice_class/class_8/bottom_bar.dart';
import 'package:practice_class/class_8/class_8.dart';

class BottomBarController extends StatefulWidget {
  const BottomBarController({super.key});

  @override
  State<BottomBarController> createState() => _BottomBarControllerState();
}

List<Widget> screens = [
  Class8(),
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
      //body: screens[selectedIndex],
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            color: Colors.red,
            child: screens[selectedIndex],
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
                color: Colors.transparent,
                padding: const EdgeInsets.all(10),
                child: Container(
                  decoration: BoxDecoration(
                      color: const Color(0xff2f2a4bdd),
                      borderRadius: BorderRadius.circular(50)),
                  child: BottomBar(
                      onTap: onItemTapped, currentIndex: selectedIndex),
                )),
          )
        ],
      ),
      // bottomNavigationBar: Container(
      //     color: Colors.transparent,
      //     padding: EdgeInsets.all(10),
      //     child: BottomBar(onTap: onItemTapped, currentIndex: selectedIndex)),
    );
  }
}

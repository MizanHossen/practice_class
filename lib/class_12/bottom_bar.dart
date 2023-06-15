import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  final void Function(int) onTap;
  final int currentIndex;
  const BottomBar({super.key, required this.onTap, required this.currentIndex});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.transparent,
      type: BottomNavigationBarType.fixed,
      currentIndex: widget.currentIndex,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.grey,
      onTap: widget.onTap,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.file_copy), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.notifications), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "Home"),
      ],
    );
  }
}

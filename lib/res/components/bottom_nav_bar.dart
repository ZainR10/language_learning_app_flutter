import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onItemTapped;

  const CustomBottomNavBar({
    required this.selectedIndex,
    required this.onItemTapped,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: selectedIndex,
      selectedFontSize: 15,
      iconSize: 25,
      unselectedFontSize: 15,
      selectedItemColor: Colors.blueAccent,
      unselectedItemColor: Colors.black,
      backgroundColor: Colors.transparent,
      elevation: 0,
      onTap: onItemTapped,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.account_circle),
          label: "Profile",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.school_rounded),
          label: "Courses",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.auto_graph_sharp),
          label: "Results",
        ),
      ],
    );
  }
}

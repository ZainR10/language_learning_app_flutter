import 'package:flutter/material.dart';
import 'package:language_learning_app_flutter/res/components/bottom_nav_bar.dart';
import 'package:language_learning_app_flutter/utils/routes/routes_name.dart';

class CoursesView extends StatefulWidget {
  const CoursesView({super.key});

  @override
  State<CoursesView> createState() => _CoursesViewState();
}

class _CoursesViewState extends State<CoursesView> {
  int _selectedIndex = 1;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    switch (index) {
      case 0:
        Navigator.pushNamed(context, RoutesName.profileView);
        break;
      case 1:
        Navigator.pushNamed(context, RoutesName.coursesView);
        break;
      case 2:
        Navigator.pushNamed(context, RoutesName.resultView);
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Courses'),
      ),
      bottomNavigationBar: CustomBottomNavBar(
          selectedIndex: _selectedIndex, onItemTapped: _onItemTapped),
    );
  }
}

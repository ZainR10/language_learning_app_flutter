import 'package:flutter/material.dart';
import 'package:language_learning_app_flutter/res/components/bottom_nav_bar.dart';
import 'package:language_learning_app_flutter/res/components/image_container.dart';
import 'package:language_learning_app_flutter/res/components/round_button.dart';
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
    final height = MediaQuery.of(context).size.height * 1;
    final width = MediaQuery.of(context).size.width * 1;
    return Scaffold(
        appBar: AppBar(
          title: Text('Courses'),
        ),
        bottomNavigationBar: CustomBottomNavBar(
            selectedIndex: _selectedIndex, onItemTapped: _onItemTapped),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ImageContainer(
                        width: width * .15,
                        height: height * .07,
                        imageUrl: 'assets/images/pakistan-flag.svg'),
                    const Text(
                      'Urdu',
                      style: TextStyle(
                          letterSpacing: 2,
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    ),
                    const Spacer(),
                    RoundButton(
                        height: height * .08,
                        width: width * .28,
                        title: '  Get\nStarted',
                        onPress: () {})
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ImageContainer(
                        width: width * .15,
                        height: height * .07,
                        imageUrl: 'assets/images/saudi-arabia-flag.svg'),
                    const Text(
                      'Arabic',
                      style: TextStyle(
                          letterSpacing: 2,
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    ),
                    const Spacer(),
                    RoundButton(
                        height: height * .08,
                        width: width * .28,
                        title: '  Get\nStarted',
                        onPress: () {})
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ImageContainer(
                        width: width * .15,
                        height: height * .07,
                        imageUrl: 'assets/images/spain-flag.svg'),
                    const Text(
                      'Spainish',
                      style: TextStyle(
                          letterSpacing: 2,
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    ),
                    const Spacer(),
                    RoundButton(
                        height: height * .08,
                        width: width * .28,
                        title: '  Get\nStarted',
                        onPress: () {})
                  ],
                )
              ],
            ),
          ),
        ));
  }
}

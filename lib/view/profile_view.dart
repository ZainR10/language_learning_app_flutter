import 'package:flutter/material.dart';
import 'package:language_learning_app_flutter/res/components/bottom_nav_bar.dart';
import 'package:language_learning_app_flutter/res/components/image_container.dart';
import 'package:language_learning_app_flutter/res/components/language_name_row.dart';
import 'package:language_learning_app_flutter/res/components/progress_component.dart';
import 'package:language_learning_app_flutter/utils/routes/routes_name.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  int _selectedIndex = 0;

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
    // media queiry funtions for hieght and width
    //whole  size of screen is 1 from hieght and width
    final height = MediaQuery.of(context).size.height * 1;
    final width = MediaQuery.of(context).size.width * 1;
    return Scaffold(
      bottomNavigationBar: CustomBottomNavBar(
          selectedIndex: _selectedIndex, onItemTapped: _onItemTapped),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  //Profile pic and Name
                  child: Expanded(
                    child: Center(
                      child: Column(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.indigoAccent,
                            radius: 50,
                            child: Icon(
                              Icons.person_4_outlined,
                              size: 50,
                            ),
                          ),
                          Text(
                            'Hi, Zain',
                            style: TextStyle(fontSize: 40),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                //Selected languages
                SizedBox(
                  height: height * .03,
                ),
                Row(
                  children: [
                    const Text(
                      'Selected Languages',
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          letterSpacing: 2,
                          fontSize: 28,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      width: width * 0.05,
                    ),
                    Icon(
                      Icons.translate_sharp,
                      size: 35,
                      weight: 20,
                      color: Colors.indigo[700],
                      shadows: const [
                        BoxShadow(
                            blurRadius: 20,
                            color: Colors.indigoAccent,
                            spreadRadius: 10)
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: height * .02,
                ),
                //LanguageNameRow (created a row component to make code look clean)
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  child: LanguageNameRow(
                    languageNames: ['Urdu', 'Arabic', 'Spanish'],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // created a image holding container component to make code look clean
                    ImageContainer(
                      width: width * .25,
                      height: height * .12,
                      imageUrl: 'assets/images/pakistan-flag.svg',
                    ),
                    ImageContainer(
                      width: width * .25,
                      height: height * .12,
                      imageUrl: 'assets/images/saudi-arabia-flag.svg',
                    ),
                    ImageContainer(
                      width: width * .25,
                      height: height * .12,
                      imageUrl: 'assets/images/spain-flag.svg',
                    ),
                  ],
                ),
                SizedBox(
                  height: height * .03,
                ),
                Row(
                  children: [
                    const Text(
                      'Current Progress',
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          letterSpacing: 2,
                          fontSize: 28,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      width: width * 0.05,
                    ),
                    Icon(
                      Icons.auto_graph_outlined,
                      size: 40,
                      weight: 20,
                      color: Colors.indigo[700],
                      shadows: const [
                        BoxShadow(
                            blurRadius: 20,
                            color: Colors.indigoAccent,
                            spreadRadius: 10)
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: height * .02,
                ),
                //component for progress indicator
                ProgressIndicatorComponent(
                  progressIndicators: [
                    ProgressIndicatorData(title: 'Urdu', currentStep: 3),
                    ProgressIndicatorData(title: 'Arabic', currentStep: 2),
                    ProgressIndicatorData(title: 'Spanish', currentStep: 4),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

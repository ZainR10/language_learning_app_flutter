import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:language_learning_app_flutter/res/components/bottom_nav_bar.dart';
import 'package:language_learning_app_flutter/res/components/image_container.dart';
import 'package:language_learning_app_flutter/res/components/language_name_row.dart';
import 'package:language_learning_app_flutter/res/components/progress_component.dart';
import 'package:language_learning_app_flutter/utils/routes/general_utils.dart';
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
    final auth = FirebaseAuth.instance;
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
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                InkWell(
                  onTap: () {
                    auth.signOut().then((value) {
                      Navigator.pushNamed(context, RoutesName.loginView);
                    }).onError((error, stackTrace) {
                      GeneralUtils.snackBar(error.toString(), context);
                    });
                  },
                  child: const Icon(
                    Icons.logout,
                    size: 40,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
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
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 1),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: height * .03,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Selected Languages',
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          letterSpacing: 2,
                          fontSize: 28,
                          fontWeight: FontWeight.w400),
                    ),
                    const Spacer(),
                    Icon(
                      Icons.translate_sharp,
                      size: 35,
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
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  child: LanguageNameRow(
                    languageNames: ['Urdu', 'Arabic', 'Spanish'],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ImageContainer(
                      width: width * .25,
                      height: height * .10,
                      imageUrl: 'assets/images/pakistan-flag.svg',
                    ),
                    ImageContainer(
                      width: width * .25,
                      height: height * .10,
                      imageUrl: 'assets/images/saudi-arabia-flag.svg',
                    ),
                    ImageContainer(
                      width: width * .25,
                      height: height * .10,
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
                    const Spacer(),
                    Icon(
                      Icons.auto_graph_outlined,
                      size: 40,
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

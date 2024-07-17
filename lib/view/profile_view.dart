import 'package:flutter/material.dart';
import 'package:language_learning_app_flutter/res/components/image_container.dart';
import 'package:language_learning_app_flutter/res/components/language_name_row.dart';
import 'package:language_learning_app_flutter/res/components/progress_component.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    // media queiry funtions for hieght and width
    //whole  size of screen is 1 from hieght and width
    final height = MediaQuery.of(context).size.height * 1;
    final width = MediaQuery.of(context).size.width * 1;
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          selectedFontSize: 20,

          // type: BottomNavigationBarType.shifting,
          iconSize: 35,
          unselectedFontSize: 15,
          selectedItemColor: Colors.blueAccent,
          backgroundColor: Colors.transparent,
          elevation: 0,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.account_circle,
                  color: Colors.black,
                ),
                label: "profile"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.menu_book,
                  color: Colors.black,
                ),
                label: "Lessons"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.assessment,
                  color: Colors.black,
                ),
                label: "Results"),
          ]),
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
                            backgroundColor: Colors.green,
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
                const Text(
                  'Selected Languages:',
                  style: TextStyle(
                      letterSpacing: 2,
                      fontSize: 24,
                      fontWeight: FontWeight.w400),
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
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // created a image holding container component to make code look clean
                    ImageContainer(
                      imageUrl: 'assets/images/pakistan-flag.svg',
                    ),
                    ImageContainer(
                      imageUrl: 'assets/images/saudi-arabia-flag.svg',
                    ),
                    ImageContainer(
                      imageUrl: 'assets/images/spain-flag.svg',
                    ),
                  ],
                ),
                SizedBox(
                  height: height * .03,
                ),
                const Text(
                  'Current Progress:',
                  style: TextStyle(
                      letterSpacing: 2,
                      fontSize: 24,
                      fontWeight: FontWeight.w400),
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

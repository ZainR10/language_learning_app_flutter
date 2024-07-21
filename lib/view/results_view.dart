import 'package:flutter/material.dart';
import 'package:language_learning_app_flutter/res/components/bottom_nav_bar.dart';
import 'package:language_learning_app_flutter/utils/routes/routes_name.dart';

class ResultsView extends StatefulWidget {
  const ResultsView({super.key});

  @override
  State<ResultsView> createState() => _ResultsViewState();
}

class _ResultsViewState extends State<ResultsView> {
  int _selectedIndex = 2;

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
        backgroundColor: Colors.transparent,
        title: const Text('RESULTS'),
      ),
      bottomNavigationBar: CustomBottomNavBar(
          selectedIndex: _selectedIndex, onItemTapped: _onItemTapped),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            const Text(
              'Final Quiz Results:',
              style: TextStyle(
                  fontSize: 30,
                  letterSpacing: 2,
                  fontWeight: FontWeight.w900,
                  decoration: TextDecoration.underline),
            ),
            //course
            SizedBox(
              height: height * .03,
            ),
            const Row(
              children: [
                Text(
                  'Course:',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 1,
                      decoration: TextDecoration.underline),
                ),
                Spacer(),
                Text(
                  'Urdu',
                  style: TextStyle(
                    fontSize: 20,
                    letterSpacing: 1,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: height * .03,
            ),
//course level
            const Row(
              children: [
                Text(
                  'Course Level:',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 1,
                      decoration: TextDecoration.underline),
                ),
                Spacer(),
                Text(
                  'Introduction',
                  style: TextStyle(
                    fontSize: 20,
                    letterSpacing: 1,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),

            SizedBox(
              height: height * .03,
            ),
            //correct answers
            const Row(
              children: [
                Text(
                  'Correct Answers:',
                  style: TextStyle(
                      fontSize: 24,
                      letterSpacing: 1,
                      fontWeight: FontWeight.w700,
                      decoration: TextDecoration.underline),
                ),
                Spacer(),
                Text(
                  '0/5',
                  style: TextStyle(
                    fontSize: 18,
                    letterSpacing: 2,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: height * .03,
            ),
            //wrong answers

            const Row(
              children: [
                Text(
                  'Wrong Answers:',
                  style: TextStyle(
                      fontSize: 24,
                      letterSpacing: 1,
                      fontWeight: FontWeight.w700,
                      decoration: TextDecoration.underline),
                ),
                Spacer(),
                Text(
                  '0/5',
                  style: TextStyle(
                    fontSize: 18,
                    letterSpacing: 2,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: height * .03,
            ),
            //marks obtained
            const Row(
              children: [
                Text(
                  'Marks Obtained:',
                  style: TextStyle(
                      fontSize: 24,
                      letterSpacing: 1,
                      fontWeight: FontWeight.w700,
                      decoration: TextDecoration.underline),
                ),
                Spacer(),
                //correct answers

                Text(
                  '5/5',
                  style: TextStyle(
                    letterSpacing: 2,
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

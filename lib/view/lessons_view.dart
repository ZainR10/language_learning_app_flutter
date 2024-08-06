import 'package:flutter/material.dart';
import 'package:language_learning_app_flutter/res/components/lessons_component.dart';
import 'package:language_learning_app_flutter/res/components/round_button.dart';

class LessonsView extends StatefulWidget {
  final String dbDocLanguage;
  final String dbTopicTitle;
  final String dbLevelNumber;
  const LessonsView(
      {super.key,
      required this.dbDocLanguage,
      required this.dbLevelNumber,
      required this.dbTopicTitle});

  @override
  State<LessonsView> createState() => _LessonsViewState();
}

class _LessonsViewState extends State<LessonsView> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 1;
    final width = MediaQuery.of(context).size.width * 1;
    return Scaffold(
      // backgroundColor: Colors.indigoAccent[100],

      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text('Greetings in urdu'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            LessonsComponent(
                height: height * .35,
                width: width * 1,
                lessonEnglish: 'Hi',
                lessonNative: 'سلام',
                lessontitle: 'Greetings in Urdu:'),
            SizedBox(
              height: height * .02,
            ),
            LessonsComponent(
                height: height * .35,
                width: width * 1,
                lessonEnglish: 'Goodbye',
                lessonNative: 'الوداع',
                lessontitle: 'Greetings in Urdu:'),
            SizedBox(
              height: height * .02,
            ),
            LessonsComponent(
                height: height * .35,
                width: width * 1,
                lessonEnglish: 'Good Morning',
                lessonNative: 'صبح بخیر',
                lessontitle: 'Greetings in Urdu:'),
            RoundButton(
                width: width * 1,
                height: height * .08,
                title: 'Next',
                onPress: () {})
          ],
        ),
      ),
    );
  }
}

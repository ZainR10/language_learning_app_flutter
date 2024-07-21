import 'package:flutter/material.dart';
import 'package:language_learning_app_flutter/res/components/roadmap_component.dart';
import 'package:language_learning_app_flutter/res/components/round_button.dart';
import 'package:language_learning_app_flutter/utils/routes/routes_name.dart';

class RoadMapView4 extends StatefulWidget {
  const RoadMapView4({super.key});

  @override
  State<RoadMapView4> createState() => _RoadMapView4State();
}

class _RoadMapView4State extends State<RoadMapView4> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 1;
    final width = MediaQuery.of(context).size.width * 1;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lessons'),
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              LessonComponent(
                lessonNumber: '1',
                title: 'Expressing Opinions',
                onPress: () {
                  Navigator.pushNamed(context, RoutesName.lessonsView);
                },
              ),
              SizedBox(
                height: height * .03,
              ),
              //self introduction
              LessonComponent(
                lessonNumber: '2',
                title: 'Describing People & Objects',
                onPress: () {
                  Navigator.pushNamed(context, RoutesName.lessonsView);
                },
              ),
              SizedBox(
                height: height * .03,
              ),
              //days of week
              LessonComponent(
                lessonNumber: '3',
                title: ' Cultural Phrases and Idioms',
                onPress: () {
                  Navigator.pushNamed(context, RoutesName.lessonsView);
                },
              ),
              SizedBox(
                height: height * .03,
              ),
              //Numbers
              LessonComponent(
                lessonNumber: '4',
                title: 'Formal vs. Informal Speech',
                onPress: () {
                  Navigator.pushNamed(context, RoutesName.lessonsView);
                },
              ),
              SizedBox(
                height: height * .03,
              ),
              //common phrases
              LessonComponent(
                lessonNumber: '5',
                title: 'Debating Skills',
                onPress: () {
                  Navigator.pushNamed(context, RoutesName.lessonsView);
                },
              ),
              RoundButton(
                  width: width * .30,
                  height: height * .08,
                  title: 'Quiz',
                  onPress: () {})
            ],
          ),
        ),
      ),
    );
  }
}

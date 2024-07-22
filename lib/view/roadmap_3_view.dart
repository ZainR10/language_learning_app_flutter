import 'package:flutter/material.dart';
import 'package:language_learning_app_flutter/res/components/roadmap_component.dart';
import 'package:language_learning_app_flutter/res/components/round_button.dart';
import 'package:language_learning_app_flutter/utils/routes/routes_name.dart';

class RoadMapView3 extends StatefulWidget {
  const RoadMapView3({super.key});

  @override
  State<RoadMapView3> createState() => _RoadMapView3State();
}

class _RoadMapView3State extends State<RoadMapView3> {
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
              RoadmapComponent(
                lessonNumber: '1',
                title: 'Daily Routines',
                onPress: () {
                  Navigator.pushNamed(context, RoutesName.lessonsView);
                },
              ),
              SizedBox(
                height: height * .03,
              ),
              //self introduction
              RoadmapComponent(
                lessonNumber: '2',
                title: 'Shopping Vocabulary',
                onPress: () {
                  Navigator.pushNamed(context, RoutesName.lessonsView);
                },
              ),
              SizedBox(
                height: height * .03,
              ),
              //days of week
              RoadmapComponent(
                lessonNumber: '3',
                title: 'Food and Drinks',
                onPress: () {
                  Navigator.pushNamed(context, RoutesName.lessonsView);
                },
              ),
              SizedBox(
                height: height * .03,
              ),
              //Numbers
              RoadmapComponent(
                lessonNumber: '4',
                title: 'Making Plans ',
                onPress: () {
                  Navigator.pushNamed(context, RoutesName.lessonsView);
                },
              ),
              SizedBox(
                height: height * .03,
              ),
              //common phrases
              RoadmapComponent(
                lessonNumber: '5',
                title: 'Tenses',
                onPress: () {},
              ),
              RoundButton(
                  width: width * .30,
                  height: height * .08,
                  title: 'Quiz',
                  onPress: () {
                    Navigator.pushNamed(context, RoutesName.quizView);
                  })
            ],
          ),
        ),
      ),
    );
  }
}

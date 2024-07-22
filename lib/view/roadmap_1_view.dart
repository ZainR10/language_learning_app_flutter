import 'package:flutter/material.dart';
import 'package:language_learning_app_flutter/res/components/roadmap_component.dart';

import 'package:language_learning_app_flutter/res/components/round_button.dart';
import 'package:language_learning_app_flutter/utils/routes/routes_name.dart';

class RoadMapView1 extends StatefulWidget {
  const RoadMapView1({super.key});

  @override
  State<RoadMapView1> createState() => _RoadMapView1State();
}

class _RoadMapView1State extends State<RoadMapView1> {
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
                title: 'Greetings',
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
                title: 'Self Introduction',
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
                title: 'Days of Week',
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
                title: 'Numbers',
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
                title: 'Common Phrases',
                onPress: () {
                  Navigator.pushNamed(context, RoutesName.lessonsView);
                },
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

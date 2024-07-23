// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:language_learning_app_flutter/res/components/roadmap_details_component.dart';
import 'package:language_learning_app_flutter/utils/routes/routes_name.dart';

class RoadMapDetailsView extends StatefulWidget {
  const RoadMapDetailsView({super.key});

  @override
  State<RoadMapDetailsView> createState() => _RoadMapDetailsViewState();
}

class _RoadMapDetailsViewState extends State<RoadMapDetailsView> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 1;
    final width = MediaQuery.of(context).size.width * 1;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Road map'),
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding:
                const EdgeInsets.only(right: 10, left: 10, bottom: 10, top: 20),
            child: Column(
              children: [
                //Level 1
                LessonDetailsComponent(
                  color: Colors.indigoAccent[100],
                  title: 'Introduction:',
                  description:
                      'Everything you need to know to introduce yourself,basic greetings,names of days,numbers etc.',
                  numberoflesson: '0/5',
                  onPress: () {
                    Navigator.pushNamed(context, RoutesName.roadMapView1);
                  },
                ),
                SizedBox(
                  height: height * .03,
                ),
                // level 2
                LessonDetailsComponent(
                  color: Colors.greenAccent[200],
                  title: ' Everyday Conversations:',
                  description:
                      'Everything you need to know about family members,simple questions,basic verbs etc.',
                  numberoflesson: '0/5',
                  onPress: () {
                    Navigator.pushNamed(context, RoutesName.roadMapView2);
                  },
                ),
                SizedBox(
                  height: height * .03,
                ),
                //level 3
                LessonDetailsComponent(
                  color: Colors.cyanAccent[200],
                  title: ' Daily Activities:',
                  description:
                      'Everything you need to know about  daily routines,shopping vocabulary,food and drinks,directions and places etc.',
                  numberoflesson: '0/5',
                  onPress: () {
                    Navigator.pushNamed(context, RoutesName.roadMapView3);
                  },
                ),
                SizedBox(
                  height: height * .03,
                ),
                //level 4
                LessonDetailsComponent(
                  color: Colors.redAccent[100],
                  title: ' Conversations and Expressions:',
                  description:
                      'Everything you need to know about how to expressing your opinions,making plans,describing people and objects,cultural Phrases and idioms etc.',
                  numberoflesson: '0/5',
                  onPress: () {
                    Navigator.pushNamed(context, RoutesName.roadMapView4);
                  },
                ),
              ],
            )),
      ),
    );
  }
}

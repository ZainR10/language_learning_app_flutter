import 'package:flutter/material.dart';
import 'package:language_learning_app_flutter/res/components/lessons_component.dart';
import 'package:language_learning_app_flutter/res/components/round_button.dart';
import 'package:language_learning_app_flutter/view_models/firestore_provider.dart';
import 'package:provider/provider.dart';

class LessonsView extends StatefulWidget {
  final String language;
  final int level;
  final String topic;

  const LessonsView(
      {Key? key,
      required this.language,
      required this.level,
      required this.topic})
      : super(key: key);

  @override
  State<LessonsView> createState() => _LessonsViewState();
}

class _LessonsViewState extends State<LessonsView> {
  @override
  void initState() {
    super.initState();
    // Fetch lessons using the provider when the widget initializes
    final provider = Provider.of<LessonsProvider>(context, listen: false);
    provider.fetchLessons(widget.language, widget.level, widget.topic);
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text('Greetings in ${widget.language}'),
      ),
      body: Consumer<LessonsProvider>(
        builder: (context, provider, child) {
          if (provider.loading) {
            return const Center(child: CircularProgressIndicator());
          }

          if (provider.lessons.isEmpty) {
            return const Center(child: Text('No lessons found.'));
          }

          return Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: provider.lessons.map((lesson) {
                return LessonsComponent(
                  height: height * .35,
                  width: width,
                  lessonEnglish: lesson['lessonEnglish'],
                  lessonNative: lesson['lessonNative'],
                  lessontitle: lesson['lesson'],
                );
              }).toList(),
            ),
          );
        },
      ),
      floatingActionButton: RoundButton(
        width: width * .30,
        height: height * .08,
        title: 'Next',
        onPress: () {},
      ),
    );
  }
}

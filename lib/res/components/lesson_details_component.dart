import 'package:flutter/material.dart';
import 'package:language_learning_app_flutter/res/components/round_button.dart';

class LessonDetailsComponent extends StatelessWidget {
  final String title;
  final Color? color;
  final String description;
  final String numberoflesson;
  final VoidCallback onPress;

  const LessonDetailsComponent(
      {required this.title,
      required this.color,
      required this.onPress,
      required this.description,
      required this.numberoflesson,
      super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 1;
    final width = MediaQuery.of(context).size.width * 1;
    return Center(
      child: Container(
        // height: height * .60,
        // width: width * 1,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12), color: color),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(children: [
            Text(
              title,
              style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                  decoration: TextDecoration.underline),
            ),
            SizedBox(
              height: height * .03,
            ),
            Text(
              description,
              // 'Everything you need to know to introduce yourself,basic greetings,names of days,numbers etc.',
              style: const TextStyle(
                  fontSize: 24, fontWeight: FontWeight.w400, letterSpacing: 1),
            ),
            SizedBox(
              height: height * .03,
            ),
            Row(
              children: [
                const Icon(
                  Icons.star,
                  color: Colors.white,
                ),
                Text(
                  numberoflesson,
                  style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 2),
                ),
                const Spacer(),
                RoundButton(
                    height: height * .07,
                    width: width * .28,
                    title: 'Continue',
                    onPress: onPress)
              ],
            )
          ]),
        ),
      ),
    );
  }
}

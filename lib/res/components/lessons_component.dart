import 'package:flutter/material.dart';

class LessonsComponent extends StatelessWidget {
  final double? height;
  final double? width;
  final String lessontitle;
  final String lessonEnglish;
  final String lessonNative;

  const LessonsComponent(
      {this.height,
      this.width,
      required this.lessonEnglish,
      required this.lessonNative,
      required this.lessontitle,
      super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 1;
    final width = MediaQuery.of(context).size.width * 1;
    return Container(
      height: height * .35,
      width: width * 1,
      decoration: BoxDecoration(
          // border: Border.all(
          //     color: Colors.black, style: BorderStyle.solid, width: 2),
          color: Colors.indigoAccent[200]?.withOpacity(0.2),
          borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              lessontitle,
              style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                  decoration: TextDecoration.underline),
            ),
            Row(
              children: [
                Text(
                  lessonEnglish,
                  style: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w900,
                      decoration: TextDecoration.underline),
                ),
                SizedBox(
                  width: width * .04,
                ),
                Text(
                  '<---English',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey.shade700,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  lessonNative,
                  style: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w900,
                      decoration: TextDecoration.underline),
                ),
                SizedBox(
                  width: width * .04,
                ),
                Text(
                  '<---Urdu',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey.shade700,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const Spacer(),
                // SizedBox(
                //   width: width * .02,
                // ),
                const Icon(
                  Icons.volume_up,
                  size: 40,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

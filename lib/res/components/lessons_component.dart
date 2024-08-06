// ignore_for_file: unused_local_variable

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
      // height: height * .35,
      // width: width * 1,

      decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.indigo.shade300,
              Colors.purple.shade200,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          // border: Border.all(
          //     color: Colors.black, style: BorderStyle.solid, width: 2),
          color: Colors.tealAccent.shade100,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.5), // Adjust opacity as needed
              spreadRadius: 2,
              blurRadius: 2,
              offset: const Offset(3, 8), // changes position of shadow
            ),
          ],
          borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                lessontitle,
                style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                    decoration: TextDecoration.underline),
              ),
            ),
            Row(
              children: [
                Text(
                  lessonEnglish,
                  style: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w400,
                      decoration: TextDecoration.underline),
                ),
                SizedBox(
                  width: width * .04,
                ),
                // Text(
                //   '<---English',
                //   style: TextStyle(
                //     fontSize: 14,
                //     color: Colors.grey.shade700,
                //     fontWeight: FontWeight.w400,
                //   ),
                // ),
              ],
            ),
            Row(
              children: [
                Text(
                  lessonNative,
                  style: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w400,
                      decoration: TextDecoration.underline),
                ),
                SizedBox(
                  width: width * .04,
                ),
                // Text(
                //   '<---Urdu',
                //   style: TextStyle(
                //     fontSize: 20,
                //     color: Colors.grey.shade700,
                //     fontWeight: FontWeight.w400,
                //   ),
                // ),
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

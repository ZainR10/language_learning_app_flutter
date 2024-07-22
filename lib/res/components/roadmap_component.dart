import 'package:flutter/material.dart';

class RoadmapComponent extends StatelessWidget {
  final String title;
  final String lessonNumber;
  final VoidCallback onPress;
  const RoadmapComponent(
      {required this.lessonNumber,
      required this.onPress,
      required this.title,
      super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 1;
    final width = MediaQuery.of(context).size.width * 1;
    return InkWell(
      onTap: onPress,
      child: Row(
        children: [
          Container(
            height: height * .12,
            width: width * .20,
            decoration: BoxDecoration(
                color: Colors.indigoAccent[100],
                borderRadius: BorderRadius.circular(100)),
            child: Center(
              child: Text(
                lessonNumber,
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(
            width: width * .02,
          ),
          Expanded(
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

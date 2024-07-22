import 'package:flutter/material.dart';

class QuizComponent extends StatelessWidget {
  final String quizLevel;
  final String question;
  final String opt1;
  final String opt2;
  final String opt3;

  const QuizComponent(
      {required this.quizLevel,
      required this.question,
      required this.opt1,
      required this.opt2,
      required this.opt3,
      super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 1;
    final width = MediaQuery.of(context).size.width * 1;
    return Column(
      // mainAxisAlignment: MainAxisAlignment.center,
      // crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
          child: Text(
            quizLevel,
            style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w600,
                decoration: TextDecoration.underline),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(10),
          height: height * .35,
          width: width * 1,
          decoration: BoxDecoration(
              // border: Border.all(
              //     color: Colors.black, style: BorderStyle.solid, width: 2),
              color: Colors.indigoAccent[200]?.withOpacity(0.2),
              borderRadius: BorderRadius.circular(12)),
          child: Expanded(
            child: Text(
              question,
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
        SizedBox(
          height: height * .02,
        ),
        //option 1
        Container(
          padding: const EdgeInsets.all(10),
          // height: height * .35,
          width: width * 1,
          decoration: BoxDecoration(
              // border: Border.all(
              //     color: Colors.black, style: BorderStyle.solid, width: 2),
              color: Colors.indigoAccent[200]?.withOpacity(0.2),
              borderRadius: BorderRadius.circular(12)),
          child: Expanded(
            child: Center(
              child: Text(
                opt1,
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: height * .02,
        ),
        //option 2
        Container(
          padding: const EdgeInsets.all(10),
          // height: height * .35,
          width: width * 1,
          decoration: BoxDecoration(
              // border: Border.all(
              //     color: Colors.black, style: BorderStyle.solid, width: 2),
              color: Colors.indigoAccent[200]?.withOpacity(0.2),
              borderRadius: BorderRadius.circular(12)),
          child: Expanded(
            child: Center(
              child: Text(
                opt2,
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: height * .02,
        ),
        //option 3
        Container(
          padding: const EdgeInsets.all(10),
          // height: height * .35,
          width: width * 1,
          decoration: BoxDecoration(
              // border: Border.all(
              //     color: Colors.black, style: BorderStyle.solid, width: 2),
              color: Colors.indigoAccent[200]?.withOpacity(0.2),
              borderRadius: BorderRadius.circular(12)),
          child: Expanded(
            child: Center(
              child: Text(
                opt3,
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:language_learning_app_flutter/res/components/round_button.dart';

class LessonsView extends StatefulWidget {
  const LessonsView({super.key});

  @override
  State<LessonsView> createState() => _LessonsViewState();
}

class _LessonsViewState extends State<LessonsView> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 1;
    final width = MediaQuery.of(context).size.width * 1;
    return Scaffold(
      // backgroundColor: Colors.indigoAccent[100],

      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text('Greetings in urdu'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Container(
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
                    const Text(
                      'How to Greet In Urdu:',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w600,
                          decoration: TextDecoration.underline),
                    ),
                    Row(
                      children: [
                        const Text(
                          'Hi',
                          style: TextStyle(
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
                        const Text(
                          'سلام ',
                          style: TextStyle(
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
            ),
            RoundButton(
                width: width * .30,
                height: height * .08,
                title: 'Next',
                onPress: () {})
          ],
        ),
      ),
    );
  }
}

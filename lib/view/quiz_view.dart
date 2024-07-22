import 'package:flutter/material.dart';
import 'package:language_learning_app_flutter/res/components/quiz_component.dart';

class QuizView extends StatefulWidget {
  const QuizView({super.key});

  @override
  State<QuizView> createState() => _QuizViewState();
}

class _QuizViewState extends State<QuizView> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 1;
    final width = MediaQuery.of(context).size.width * 1;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quiz'),
        backgroundColor: Colors.transparent,
      ),
      body: const Padding(
          padding: EdgeInsets.all(10),
          child: QuizComponent(
              quizLevel: 'Quiz Level 1',
              question: 'how to greet a person in urdu?',
              opt1: 'خیال رکھنا',
              opt2: 'آپ کا شکریہ',
              opt3: 'سلام')),
    );
  }
}

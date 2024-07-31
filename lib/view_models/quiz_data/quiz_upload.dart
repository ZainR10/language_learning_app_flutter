import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:language_learning_app_flutter/models/quiz_model.dart';
import 'package:language_learning_app_flutter/view_models/quiz_data/arabic_quiz/arabic_quiz1.dart';
import 'package:language_learning_app_flutter/view_models/quiz_data/arabic_quiz/arabic_quiz2.dart';
import 'package:language_learning_app_flutter/view_models/quiz_data/arabic_quiz/arabic_quiz3.dart';
import 'package:language_learning_app_flutter/view_models/quiz_data/arabic_quiz/arabic_quiz4.dart';
import 'package:language_learning_app_flutter/view_models/quiz_data/spanish_quiz/spainish_quiz2.dart';
import 'package:language_learning_app_flutter/view_models/quiz_data/spanish_quiz/spainish_quiz3.dart';
import 'package:language_learning_app_flutter/view_models/quiz_data/spanish_quiz/spainish_quiz4.dart';
import 'package:language_learning_app_flutter/view_models/quiz_data/spanish_quiz/spanish_quiz1.dart';

import 'package:language_learning_app_flutter/view_models/quiz_data/urdu_quiz/urdu_quiz1.dart';
import 'package:language_learning_app_flutter/view_models/quiz_data/urdu_quiz/urdu_quiz2.dart';
import 'package:language_learning_app_flutter/view_models/quiz_data/urdu_quiz/urdu_quiz3.dart';
import 'package:language_learning_app_flutter/view_models/quiz_data/urdu_quiz/urdu_quiz4.dart';

Future<void> uploadQuizData(LanguageQuizModel languageQuizModel) async {
  final firestore = FirebaseFirestore.instance;

  try {
    DocumentSnapshot snapshot = await firestore
        .collection('quizzes')
        .doc(languageQuizModel.language)
        .get();

    if (snapshot.exists) {
      // Data already exists, so no need to upload
      if (kDebugMode) {
        print('Quiz data already exists for ${languageQuizModel.language}');
      }
      return;
    }

    // Upload data if it doesn't exist
    await firestore
        .collection('quizzes')
        .doc(languageQuizModel.language)
        .set(languageQuizModel.toJson());

    if (kDebugMode) {
      print(
          'Quiz data uploaded successfully for ${languageQuizModel.language}');
    }
  } catch (e) {
    if (kDebugMode) {
      print('Failed to upload quiz data for ${languageQuizModel.language}: $e');
    }
  }
}

Future<void> prepareAndUploadQuizData() async {
  try {
    // Upload Urdu Quizzes
    final urduQuizzes = [
      LanguageQuizModel.fromJson(urduQuiz1),
      LanguageQuizModel.fromJson(urduQuiz2),
      LanguageQuizModel.fromJson(urduQuiz3),
      LanguageQuizModel.fromJson(urduQuiz4),
    ];

    for (var quiz in urduQuizzes) {
      await uploadQuizData(quiz);
    }

    // Upload Spanish Quizzes
    final spanishQuizzes = [
      LanguageQuizModel.fromJson(spanishQuiz1),
      LanguageQuizModel.fromJson(spanishQuiz2),
      LanguageQuizModel.fromJson(spanishQuiz3),
      LanguageQuizModel.fromJson(spanishQuiz4),
    ];

    for (var quiz in spanishQuizzes) {
      await uploadQuizData(quiz);
    }

    // Upload Arabic Quizzes
    final arabicQuizzes = [
      LanguageQuizModel.fromJson(arabicQuiz1),
      LanguageQuizModel.fromJson(arabicQuiz2),
      LanguageQuizModel.fromJson(arabicQuiz3),
      LanguageQuizModel.fromJson(arabicQuiz4),
    ];

    for (var quiz in arabicQuizzes) {
      await uploadQuizData(quiz);
    }
  } catch (e) {
    if (kDebugMode) {
      print('Error during quiz data preparation or upload: $e');
    }
  }
}

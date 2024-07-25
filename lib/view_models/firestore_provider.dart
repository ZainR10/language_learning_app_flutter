import 'package:flutter/material.dart';
import 'package:language_learning_app_flutter/view_models/firestore_services.dart';

class LessonsProvider with ChangeNotifier {
  final FirestoreService _firestoreService = FirestoreService();

  List<Map<String, dynamic>> _lessons = [];
  List<Map<String, dynamic>> get lessons => _lessons;

  bool _loading = false;
  bool get loading => _loading;

  Future<void> fetchLessons(String language, int level, String topic) async {
    _loading = true;
    notifyListeners();

    _lessons = await _firestoreService.getLessons(language, level, topic);
    print('Fetched lessons: $_lessons');

    _loading = false;
    notifyListeners();
  }
}

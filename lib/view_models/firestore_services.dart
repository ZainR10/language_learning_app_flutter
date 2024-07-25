import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  Future<void> addLanguageData(Map<String, dynamic> data) async {
    final languageDoc =
        _db.collection('languages').doc(data['language'].toLowerCase());

    try {
      if (data['levels'] != null) {
        for (var level in data['levels']) {
          final levelDoc =
              languageDoc.collection('levels').doc(level['level'].toString());

          if (level['topics'] != null) {
            for (var topic in level['topics']) {
              final topicDoc =
                  levelDoc.collection('topics').doc(topic['topic']);

              if (topic['lessons'] != null) {
                for (var lesson in topic['lessons']) {
                  await topicDoc.collection('lessons').add(lesson);
                  print('Lesson added: $lesson');
                }
              }
            }
          }
        }
      } else {
        print('No levels found in the data.');
      }
    } catch (e) {
      print('Error adding data: $e');
    }
  }

  Future<List<Map<String, dynamic>>> getLessons(
      String language, int level, String topic) async {
    try {
      final snapshot = await _db
          .collection('languages')
          .doc(language.toLowerCase())
          .collection('levels')
          .doc(level.toString())
          .collection('topics')
          .doc(topic)
          .collection('lessons')
          .get();

      return snapshot.docs.map((doc) => doc.data()).toList();
    } catch (e) {
      print('Error fetching data: $e');
      return [];
    }
  }
}

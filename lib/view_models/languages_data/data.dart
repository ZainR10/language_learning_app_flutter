import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:language_learning_app_flutter/view_models/languages_data/arabic/arabic_level_1.dart';
import 'package:language_learning_app_flutter/view_models/languages_data/arabic/arabic_level_3.dart';
import 'package:language_learning_app_flutter/view_models/languages_data/arabic/arabic_level_4.dart';
import 'package:language_learning_app_flutter/view_models/languages_data/spainish/spainish_level_1.dart';
import 'package:language_learning_app_flutter/view_models/languages_data/spainish/spainish_level_2.dart';
import 'package:language_learning_app_flutter/view_models/languages_data/spainish/spainish_level_3.dart';
import 'package:language_learning_app_flutter/view_models/languages_data/spainish/spainish_level_4.dart';
import 'package:language_learning_app_flutter/view_models/languages_data/urdu/urdu_level_1.dart';
import 'package:language_learning_app_flutter/view_models/languages_data/urdu/urdu_level_2.dart';
import 'package:language_learning_app_flutter/view_models/languages_data/urdu/urdu_level_3.dart';
import 'package:language_learning_app_flutter/view_models/languages_data/urdu/urdu_level_4.dart';

final Map<String, dynamic> data = {
  "languages": {
    "urdu": {
      "level1": level1Urdu,
      "level2": level2Urdu,
      "level3": level3Urdu,
      "level4": level4Urdu
    },
    "arabic": {
      "level1": level1Arabic,
      "level2": level1Arabic,
      "level3": level3Arabic,
      "level4": level4Arabic
    },
    "spanish": {
      "level1": level1Spainish,
      "level2": level2Spainish,
      "level3": level3Spanish,
      "level4": level4Spanish
    }
  }
};

Future<void> uploadDataToFirestore() async {
  try {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference languages = firestore.collection('languages');

    data['languages'].forEach((language, levels) async {
      DocumentReference languageDoc = languages.doc(language);
      DocumentSnapshot snapshot = await languageDoc.get();

      if (!snapshot.exists) {
        await languageDoc.set({'levels': levels});
        if (kDebugMode) {
          print('Data uploaded for language: $language');
        }
      } else {
        if (kDebugMode) {
          print('Data already exists for language: $language');
        }
      }
    });
  } catch (e) {
    if (kDebugMode) {
      print('Error uploading data: $e');
    }
  }
}

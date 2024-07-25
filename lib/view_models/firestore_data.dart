import 'package:cloud_firestore/cloud_firestore.dart';

Future<void> addUrduLanguageData() async {
  final firestoreInstance = FirebaseFirestore.instance;

  // Urdu language data

  final urduLevel1 = {
    "level": 1,
    "title": "Introduction",
    "topics": [
      {
        "topic": "Greetings",
        "lessons": [
          {
            "lesson": "How to Greet In Urdu",
            "lessonEnglish": "Hi",
            "lessonNative": "سلام"
          },
          {
            "lesson": "Saying Goodbye in Urdu",
            "lessonEnglish": "Goodbye",
            "lessonNative": "خداحافظ"
          },
          {
            "lesson": "Good Morning in Urdu",
            "lessonEnglish": "Good Morning",
            "lessonNative": "صبح بخیر"
          }
        ]
      },
      {
        "topic": "Self Introduction",
        "lessons": [
          {
            "lesson": "Introducing Yourself in Urdu",
            "lessonEnglish": "My name is ...",
            "lessonNative": "میرا نام ... ہے"
          },
          {
            "lesson": "Asking Someone's Name in Urdu",
            "lessonEnglish": "What is your name?",
            "lessonNative": "آپ کا نام کیا ہے؟"
          },
          {
            "lesson": "Saying Your Age in Urdu",
            "lessonEnglish": "I am ... years old",
            "lessonNative": "میں ... سال کا ہوں"
          }
        ]
      },
      {
        "topic": "Days of Week",
        "lessons": [
          {
            "lesson": "Monday in Urdu",
            "lessonEnglish": "Monday",
            "lessonNative": "پیر"
          },
          {
            "lesson": "Tuesday in Urdu",
            "lessonEnglish": "Tuesday",
            "lessonNative": "منگل"
          },
          {
            "lesson": "Wednesday in Urdu",
            "lessonEnglish": "Wednesday",
            "lessonNative": "بدھ"
          },
          {
            "lesson": "Thursday in Urdu",
            "lessonEnglish": "Thursday",
            "lessonNative": "جمعرات"
          },
          {
            "lesson": "Friday in Urdu",
            "lessonEnglish": "Friday",
            "lessonNative": "جمعہ"
          },
          {
            "lesson": "Saturday in Urdu",
            "lessonEnglish": "Saturday",
            "lessonNative": "ہفتہ"
          },
          {
            "lesson": "Sunday in Urdu",
            "lessonEnglish": "Sunday",
            "lessonNative": "اتوار"
          }
        ]
      },
      {
        "topic": "Numbers",
        "lessons": [
          {
            "lesson": "One in Urdu",
            "lessonEnglish": "One",
            "lessonNative": "ایک"
          },
          {
            "lesson": "Two in Urdu",
            "lessonEnglish": "Two",
            "lessonNative": "دو"
          },
          {"lesson": "Three in Urdu", "lessonNative": "تین"},
          {"lesson": "Four in Urdu", "lessonNative": "چار"},
          {"lesson": "Five in Urdu", "lessonNative": "پانچ"},
          {"lesson": "Six in Urdu", "lessonNative": "چھ"},
          {"lesson": "Seven in Urdu", "lessonNative": "سات"},
          {"lesson": "Eight in Urdu", "lessonNative": "آٹھ"},
          {"lesson": "Nine in Urdu", "lessonNative": "نو"},
          {"lesson": "Ten in Urdu", "lessonNative": "دس"}
        ]
      },
      {
        "topic": "Common Phrases",
        "lessons": [
          {
            "lesson": "Thank You in Urdu",
            "lessonEnglish": "Thank you",
            "lessonNative": "آپ کا شکریہ"
          },
          {
            "lesson": "Please in Urdu",
            "lessonEnglish": "Please",
            "lessonNative": "براہ مہربانی"
          },
          {
            "lesson": "Yes and No in Urdu",
            "lessonEnglish": "Yes / No",
            "lessonNative": "جی ہاں / نہیں"
          }
        ]
      }
    ]
  };

  final urduLevel2 = {
    "level": 2,
    "title": "Everyday Conversations",
    "topics": [
      {
        "topic": "Basic Conversations",
        "lessons": [
          {
            "lesson": "Common Greetings in Urdu",
            "lessonEnglish": "Good morning",
            "lessonNative": "صبح بخیر"
          },
          {
            "lesson": "Asking About Well-Being in Urdu",
            "lessonEnglish": "How are you?",
            "lessonNative": "آپ کیسے ہیں؟"
          },
          {
            "lesson": "Responding to Greetings in Urdu",
            "lessonEnglish": "I am fine, thank you",
            "lessonNative": "میں ٹھیک ہوں، شکریہ"
          }
        ]
      },
      {
        "topic": "Simple Questions",
        "lessons": [
          {
            "lesson": "Asking for Names in Urdu",
            "lessonEnglish": "What is your name?",
            "lessonNative": "آپ کا نام کیا ہے؟"
          },
          {
            "lesson": "Asking for Age in Urdu",
            "lessonEnglish": "How old are you?",
            "lessonNative": "آپ کی عمر کیا ہے؟"
          }
        ]
      },
      {
        "topic": "Basic Verbs",
        "lessons": [
          {
            "lesson": "To Eat in Urdu",
            "lessonEnglish": "To eat",
            "lessonNative": "کھانا"
          },
          {
            "lesson": "To Drink in Urdu",
            "lessonEnglish": "To drink",
            "lessonNative": "پینا"
          },
          {
            "lesson": "Wednesday in Urdu",
            "lessonEnglish": "Wednesday",
            "lessonNative": "بدھ"
          },
          {
            "lesson": "To Go in Urdu",
            "lessonEnglish": "To go",
            "lessonNative": "جانا"
          }
        ]
      },
      {
        "topic": "Asking for Directions",
        "lessons": [
          {
            "lesson": "Asking for a Place in Urdu",
            "lessonEnglish": "Where is the bathroom?",
            "lessonNative": "باتھ روم کہاں ہے؟"
          },
          {
            "lesson": "Asking for Distance in Urdu",
            "lessonEnglish": "How far is it?",
            "lessonNative": "یہ کتنی دور ہے؟"
          },
          {
            "lesson": "Asking for Help in Urdu",
            "lessonEnglish": "Can you help me?",
            "lessonNative": "کیا آپ میری مدد کر سکتے ہیں؟"
          }
        ]
      },
      {
        "topic": "Describing Family Members",
        "lessons": [
          {
            "lesson": "Talking About Family in Urdu",
            "lessonEnglish": "This is my mother",
            "lessonNative": "یہ میری ماں ہے"
          },
          {
            "lesson": "Talking About Siblings in Urdu",
            "lessonEnglish": "I have a brother",
            "lessonNative": "یرا ایک بھائی ہے"
          },
          {
            "lesson": "Talking About Children in Urdu",
            "lessonEnglish": "I have two children.",
            "lessonNative": "میرے دو بچے ہیں"
          }
        ]
      }
    ]
  };

  final urduData = {
    "language": "Urdu",
    "levels": [urduLevel1, urduLevel2]
  };

  try {
    await addLanguageData(urduData);
    print('Data added successfully');
  } catch (e) {
    print('Error adding data: $e');
  }
}

Future<void> addLanguageData(Map<String, dynamic> data) async {
  final firestoreInstance = FirebaseFirestore.instance;

  final languageDoc = firestoreInstance
      .collection('languages')
      .doc(data['language'].toLowerCase());

  if (data['levels'] != null) {
    for (var level in data['levels']) {
      final levelDoc =
          languageDoc.collection('levels').doc(level['level'].toString());

      if (level['topics'] != null) {
        for (var topic in level['topics']) {
          final topicDoc = levelDoc.collection('topics').doc(topic['topic']);

          if (topic['lessons'] != null) {
            for (var lesson in topic['lessons']) {
              await topicDoc.collection('lessons').add(lesson);
            }
          }
        }
      }
    }
  } else {
    print('No levels found in the data.');
  }
}

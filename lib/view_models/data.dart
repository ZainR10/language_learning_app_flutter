import 'package:cloud_firestore/cloud_firestore.dart';

final Map<String, dynamic> data = {
  "languages": {
    "urdu": {
      "level1": {
        "Greetings": [
          {"lessonEnglish": "Hi", "lessonNative": "سلام"},
          {"lessonEnglish": "Goodbye", "lessonNative": "خداحافظ"},
          {"lessonEnglish": "Good Morning", "lessonNative": "صبح بخیر"}
        ],
        "SelfIntroduction": [
          {
            "lessonEnglish": "My name is ...",
            "lessonNative": "میرا نام ... ہے"
          },
          {
            "lessonEnglish": "What is your name?",
            "lessonNative": "آپ کا نام کیا ہے؟"
          },
          {
            "lessonEnglish": "I am ... years old",
            "lessonNative": "میں ... سال کا ہوں"
          }
        ],
        "DaysOfWeek": [
          {"lessonEnglish": "Monday", "lessonNative": "پیر"},
          {"lessonEnglish": "Tuesday", "lessonNative": "منگل"},
          {"lessonEnglish": "Wednesday", "lessonNative": "بدھ"},
          {"lessonEnglish": "Thursday", "lessonNative": "جمعرات"},
          {"lessonEnglish": "Friday", "lessonNative": "جمعہ"},
          {"lessonEnglish": "Saturday", "lessonNative": "ہفتہ"},
          {"lessonEnglish": "Sunday", "lessonNative": "اتوار"}
        ],
        "Numbers": [
          {"lessonEnglish": "One", "lessonNative": "ایک"},
          {"lessonEnglish": "Two", "lessonNative": "دو"},
          {"lessonEnglish": "Three", "lessonNative": "تین"},
          {"lessonEnglish": "Four", "lessonNative": "چار"},
          {"lessonEnglish": "Five", "lessonNative": "پانچ"},
          {"lessonEnglish": "Six", "lessonNative": "چھ"},
          {"lessonEnglish": "Seven", "lessonNative": "سات"},
          {"lessonEnglish": "Eight", "lessonNative": "آٹھ"},
          {"lessonEnglish": "Nine", "lessonNative": "نو"},
          {"lessonEnglish": "Ten", "lessonNative": "دس"}
        ],
        "CommonPhrases": [
          {"lessonEnglish": "Thank you", "lessonNative": "آپ کا شکریہ"},
          {"lessonEnglish": "Please", "lessonNative": "براہ مہربانی"},
          {"lessonEnglish": "Yes / No", "lessonNative": "جی ہاں / نہیں"}
        ]
      },
      "level2": {
        "BasicConversations": [
          {"lessonEnglish": "Good morning", "lessonNative": "صبح بخیر"},
          {"lessonEnglish": "How are you?", "lessonNative": "آپ کیسے ہیں؟"},
          {
            "lessonEnglish": "I am fine, thank you.",
            "lessonNative": "میں ٹھیک ہوں، شکریہ"
          }
        ],
        "SimpleQuestions": [
          {
            "lessonEnglish": "What is your name?",
            "lessonNative": "آپ کا نام کیا ہے؟"
          },
          {
            "lessonEnglish": "How old are you?",
            "lessonNative": "آپ کی عمر کیا ہے؟"
          },
          {
            "lessonEnglish": "Where do you live?",
            "lessonNative": "آپ کہاں رہتے ہیں؟"
          }
        ],
        "BasicVerbs": [
          {"lessonEnglish": "To eat", "lessonNative": "کھانا"},
          {"lessonEnglish": "To drink", "lessonNative": "پینا"},
          {"lessonEnglish": "To go", "lessonNative": "جانا"}
        ],
        "AskingForDirections": [
          {
            "lessonEnglish": "Where is the bathroom?",
            "lessonNative": "باتھ روم کہاں ہے؟"
          },
          {
            "lessonEnglish": "How far is it?",
            "lessonNative": "یہ کتنی دور ہے؟"
          },
          {
            "lessonEnglish": "Can you help me?",
            "lessonNative": "کیا آپ میری مدد کر سکتے ہیں؟"
          }
        ],
        "DescribingFamilyMembers": [
          {
            "lessonEnglish": "This is my mother.",
            "lessonNative": "یہ میری ماں ہے"
          },
          {
            "lessonEnglish": "I have a brother.",
            "lessonNative": "میرا ایک بھائی ہے"
          },
          {
            "lessonEnglish": "I have two children.",
            "lessonNative": "میرے دو بچے ہیں"
          }
        ]
      }
    },
    "arabic": {
      "level1": {
        "Greetings": [
          {"lessonEnglish": "Hi", "lessonNative": "مرحبا"},
          {"lessonEnglish": "Goodbye", "lessonNative": "وداعا"},
          {"lessonEnglish": "Good Morning", "lessonNative": "صباح الخير"}
        ],
        "SelfIntroduction": [
          {"lessonEnglish": "My name is ...", "lessonNative": "اسمي ..."},
          {"lessonEnglish": "What is your name?", "lessonNative": "ما اسمك؟"},
          {
            "lessonEnglish": "I am ... years old",
            "lessonNative": "عمري ... سنة"
          }
        ],
        "DaysOfWeek": [
          {"lessonEnglish": "Monday", "lessonNative": "الاثنين"},
          {"lessonEnglish": "Tuesday", "lessonNative": "الثلاثاء"},
          {"lessonEnglish": "Wednesday", "lessonNative": "الأربعاء"},
          {"lessonEnglish": "Thursday", "lessonNative": "الخميس"},
          {"lessonEnglish": "Friday", "lessonNative": "الجمعة"},
          {"lessonEnglish": "Saturday", "lessonNative": "السبت"},
          {"lessonEnglish": "Sunday", "lessonNative": "الأحد"}
        ],
        "Numbers": [
          {"lessonEnglish": "One", "lessonNative": "واحد"},
          {"lessonEnglish": "Two", "lessonNative": "اثنان"},
          {"lessonEnglish": "Three", "lessonNative": "ثلاثة"},
          {"lessonEnglish": "Four", "lessonNative": "أربعة"},
          {"lessonEnglish": "Five", "lessonNative": "خمسة"},
          {"lessonEnglish": "Six", "lessonNative": "ستة"},
          {"lessonEnglish": "Seven", "lessonNative": "سبعة"},
          {"lessonEnglish": "Eight", "lessonNative": "ثمانية"},
          {"lessonEnglish": "Nine", "lessonNative": "تسعة"},
          {"lessonEnglish": "Ten", "lessonNative": "عشرة"}
        ],
        "CommonPhrases": [
          {"lessonEnglish": "Thank you", "lessonNative": "شكرا"},
          {"lessonEnglish": "Please", "lessonNative": "من فضلك"},
          {"lessonEnglish": "Yes / No", "lessonNative": "نعم / لا"}
        ]
      },
      "level2": {
        "BasicConversations": [
          {"lessonEnglish": "Good morning", "lessonNative": "صباح الخير"},
          {"lessonEnglish": "How are you?", "lessonNative": "كيف حالك؟"},
          {
            "lessonEnglish": "I am fine, thank you.",
            "lessonNative": "أنا بخير، شكرا"
          }
        ],
        "SimpleQuestions": [
          {"lessonEnglish": "What is your name?", "lessonNative": "ما اسمك؟"},
          {"lessonEnglish": "How old are you?", "lessonNative": "كم عمرك؟"},
          {"lessonEnglish": "Where do you live?", "lessonNative": "أين تعيش؟"}
        ],
        "BasicVerbs": [
          {"lessonEnglish": "To eat", "lessonNative": "يأكل"},
          {"lessonEnglish": "To drink", "lessonNative": "يشرب"},
          {"lessonEnglish": "To go", "lessonNative": "يذهب"}
        ],
        "AskingForDirections": [
          {
            "lessonEnglish": "Where is the bathroom?",
            "lessonNative": "أين الحمام؟"
          },
          {"lessonEnglish": "How far is it?", "lessonNative": "كم يبعد؟"},
          {
            "lessonEnglish": "Can you help me?",
            "lessonNative": "هل يمكنك مساعدتي؟"
          }
        ],
        "DescribingFamilyMembers": [
          {"lessonEnglish": "This is my mother.", "lessonNative": "هذه أمي"},
          {"lessonEnglish": "I have a brother.", "lessonNative": "لدي أخ"},
          {"lessonEnglish": "I have two children.", "lessonNative": "لدي طفلان"}
        ]
      }
    },
    "spanish": {
      "level1": {
        "Greetings": [
          {"lessonEnglish": "Hi", "lessonNative": "Hola"},
          {"lessonEnglish": "Goodbye", "lessonNative": "Adiós"},
          {"lessonEnglish": "Good Morning", "lessonNative": "Buenos días"}
        ],
        "SelfIntroduction": [
          {"lessonEnglish": "My name is ...", "lessonNative": "Me llamo ..."},
          {
            "lessonEnglish": "What is your name?",
            "lessonNative": "¿Cómo te llamas?"
          },
          {
            "lessonEnglish": "I am ... years old",
            "lessonNative": "Tengo ... años"
          }
        ],
        "DaysOfWeek": [
          {"lessonEnglish": "Monday", "lessonNative": "Lunes"},
          {"lessonEnglish": "Tuesday", "lessonNative": "Martes"},
          {"lessonEnglish": "Wednesday", "lessonNative": "Miércoles"},
          {"lessonEnglish": "Thursday", "lessonNative": "Jueves"},
          {"lessonEnglish": "Friday", "lessonNative": "Viernes"},
          {"lessonEnglish": "Saturday", "lessonNative": "Sábado"},
          {"lessonEnglish": "Sunday", "lessonNative": "Domingo"}
        ],
        "Numbers": [
          {"lessonEnglish": "One", "lessonNative": "Uno"},
          {"lessonEnglish": "Two", "lessonNative": "Dos"},
          {"lessonEnglish": "Three", "lessonNative": "Tres"},
          {"lessonEnglish": "Four", "lessonNative": "Cuatro"},
          {"lessonEnglish": "Five", "lessonNative": "Cinco"},
          {"lessonEnglish": "Six", "lessonNative": "Seis"},
          {"lessonEnglish": "Seven", "lessonNative": "Siete"},
          {"lessonEnglish": "Eight", "lessonNative": "Ocho"},
          {"lessonEnglish": "Nine", "lessonNative": "Nueve"},
          {"lessonEnglish": "Ten", "lessonNative": "Diez"}
        ],
        "CommonPhrases": [
          {"lessonEnglish": "Thank you", "lessonNative": "Gracias"},
          {"lessonEnglish": "Please", "lessonNative": "Por favor"},
          {"lessonEnglish": "Yes / No", "lessonNative": "Sí / No"}
        ]
      },
      "level2": {
        "BasicConversations": [
          {"lessonEnglish": "Good morning", "lessonNative": "Buenos días"},
          {"lessonEnglish": "How are you?", "lessonNative": "¿Cómo estás?"},
          {
            "lessonEnglish": "I am fine, thank you.",
            "lessonNative": "Estoy bien, gracias"
          }
        ],
        "SimpleQuestions": [
          {
            "lessonEnglish": "What is your name?",
            "lessonNative": "¿Cómo te llamas?"
          },
          {
            "lessonEnglish": "How old are you?",
            "lessonNative": "¿Cuántos años tienes?"
          },
          {
            "lessonEnglish": "Where do you live?",
            "lessonNative": "¿Dónde vives?"
          }
        ],
        "BasicVerbs": [
          {"lessonEnglish": "To eat", "lessonNative": "Comer"},
          {"lessonEnglish": "To drink", "lessonNative": "Beber"},
          {"lessonEnglish": "To go", "lessonNative": "Ir"}
        ],
        "AskingForDirections": [
          {
            "lessonEnglish": "Where is the bathroom?",
            "lessonNative": "¿Dónde está el baño?"
          },
          {
            "lessonEnglish": "How far is it?",
            "lessonNative": "¿Qué tan lejos está?"
          },
          {
            "lessonEnglish": "Can you help me?",
            "lessonNative": "¿Puedes ayudarme?"
          }
        ],
        "DescribingFamilyMembers": [
          {
            "lessonEnglish": "This is my mother.",
            "lessonNative": "Esta es mi madre"
          },
          {
            "lessonEnglish": "I have a brother.",
            "lessonNative": "Tengo un hermano"
          },
          {
            "lessonEnglish": "I have two children.",
            "lessonNative": "Tengo dos hijos"
          }
        ]
      }
    }
  }
};

Future<void> uploadDataToFirestore() async {
  try {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference languages = firestore.collection('languages');

    data['languages'].forEach((language, levels) {
      DocumentReference languageRef = languages.doc(language);
      levels.forEach((level, topics) {
        topics.forEach((topic, lessons) {
          languageRef
              .collection('levels')
              .doc(level)
              .collection('topics')
              .doc(topic)
              .set({"lessons": lessons});
        });
      });
    });

    print('Data uploaded successfully');
  } catch (e) {
    print('Error uploading data: $e');
  }
}

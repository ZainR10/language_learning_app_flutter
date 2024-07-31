class QuizModel {
  final String question;
  final List<String> options;
  final String answer;

  QuizModel({
    required this.question,
    required this.options,
    required this.answer,
  });

  factory QuizModel.fromJson(Map<String, dynamic> json) => QuizModel(
        question: json['question'],
        options: List<String>.from(json['options']),
        answer: json['answer'],
      );

  Map<String, dynamic> toJson() => {
        'question': question,
        'options': options,
        'answer': answer,
      };
}

class LevelQuizModel {
  final List<QuizModel> questions;

  LevelQuizModel({
    required this.questions,
  });

  factory LevelQuizModel.fromJson(Map<String, dynamic> json) => LevelQuizModel(
        questions: List<QuizModel>.from(
            json['quiz']['questions'].map((x) => QuizModel.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        'quiz': {
          'questions': questions.map((x) => x.toJson()).toList(),
        },
      };
}

class LanguageQuizModel {
  final String language;
  final Map<String, LevelQuizModel> levels;

  LanguageQuizModel({
    required this.language,
    required this.levels,
  });

  factory LanguageQuizModel.fromJson(Map<String, dynamic> json) =>
      LanguageQuizModel(
        language: json['language'],
        levels: Map.from(json['levels'])
            .map((key, value) => MapEntry(key, LevelQuizModel.fromJson(value))),
      );

  Map<String, dynamic> toJson() => {
        'language': language,
        'levels': levels.map((key, value) => MapEntry(key, value.toJson())),
      };
}

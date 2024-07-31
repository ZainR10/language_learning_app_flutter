class LanguageModel {
  final String language;
  final Map<String, LevelModel> levels;

  LanguageModel({
    required this.language,
    required this.levels,
  });

  factory LanguageModel.fromJson(Map<String, dynamic> json) => LanguageModel(
        language: json['language'],
        levels: Map.from(json['levels'])
            .map((key, value) => MapEntry(key, LevelModel.fromJson(value))),
      );

  Map<String, dynamic> toJson() => {
        'language': language,
        'levels': levels.map((key, value) => MapEntry(key, value.toJson())),
      };
}

class LevelModel {
  final Map<String, TopicModel> topics;

  LevelModel({
    required this.topics,
  });

  factory LevelModel.fromJson(Map<String, dynamic> json) => LevelModel(
        topics: Map.from(json['topics'])
            .map((key, value) => MapEntry(key, TopicModel.fromJson(value))),
      );

  Map<String, dynamic> toJson() => {
        'topics': topics.map((key, value) => MapEntry(key, value.toJson())),
      };
}

class TopicModel {
  final List<LessonModel> lessons;

  TopicModel({
    required this.lessons,
  });

  factory TopicModel.fromJson(Map<String, dynamic> json) => TopicModel(
        lessons: List<LessonModel>.from(
            json['lessons'].map((x) => LessonModel.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        'lessons': lessons.map((x) => x.toJson()).toList(),
      };
}

class LessonModel {
  final String lessonEnglish;
  final String lessonNative;

  LessonModel({
    required this.lessonEnglish,
    required this.lessonNative,
  });

  factory LessonModel.fromJson(Map<String, dynamic> json) => LessonModel(
        lessonEnglish: json['lessonEnglish'],
        lessonNative: json['lessonNative'],
      );

  Map<String, dynamic> toJson() => {
        'lessonEnglish': lessonEnglish,
        'lessonNative': lessonNative,
      };
}

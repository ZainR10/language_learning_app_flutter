import 'package:flutter/material.dart';
import 'package:language_learning_app_flutter/utils/routes/routes_name.dart';
import 'package:language_learning_app_flutter/view/courses_view.dart';
import 'package:language_learning_app_flutter/view/lessons_view.dart';
import 'package:language_learning_app_flutter/view/quiz_view.dart';
import 'package:language_learning_app_flutter/view/roadmap_details_view.dart.dart';
import 'package:language_learning_app_flutter/view/roadmap_1_view.dart';
import 'package:language_learning_app_flutter/view/roadmap_2_view.dart';
import 'package:language_learning_app_flutter/view/roadmap_3_view.dart';
import 'package:language_learning_app_flutter/view/roadmap_4_view.dart';
import 'package:language_learning_app_flutter/view/profile_view.dart';
import 'package:language_learning_app_flutter/view/results_view.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.profileView:
        {
          return MaterialPageRoute(
            builder: (BuildContext context) => const ProfileView(),
          );
        }
      case RoutesName.coursesView:
        {
          return MaterialPageRoute(
            builder: (BuildContext context) => const CoursesView(),
          );
        }
      case RoutesName.resultView:
        {
          return MaterialPageRoute(
            builder: (BuildContext context) => const ResultsView(),
          );
        }
      case RoutesName.roadMapDetailsView:
        {
          return MaterialPageRoute(
            builder: (BuildContext context) => const RoadMapDetailsView(),
          );
        }
      case RoutesName.roadMapView1:
        {
          return MaterialPageRoute(
            builder: (BuildContext context) => const RoadMapView1(),
          );
        }
      case RoutesName.roadMapView2:
        {
          return MaterialPageRoute(
            builder: (BuildContext context) => const RoadMapView2(),
          );
        }
      case RoutesName.roadMapView3:
        {
          return MaterialPageRoute(
            builder: (BuildContext context) => const RoadMapView3(),
          );
        }
      case RoutesName.roadMapView4:
        {
          return MaterialPageRoute(
            builder: (BuildContext context) => const RoadMapView4(),
          );
        }
      case RoutesName.lessonsView:
        {
          return MaterialPageRoute(
            builder: (BuildContext context) => const LessonsView(),
          );
        }
      case RoutesName.quizView:
        {
          return MaterialPageRoute(
            builder: (BuildContext context) => const QuizView(),
          );
        }
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return const Scaffold(
        body: Center(
          child: Text('No Routes Defined'),
        ),
      );
    });
  }
}

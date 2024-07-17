import 'package:flutter/material.dart';
import 'package:language_learning_app_flutter/utils/routes/routes_name.dart';
import 'package:language_learning_app_flutter/view/courses_view.dart';
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

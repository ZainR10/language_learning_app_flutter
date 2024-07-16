import 'package:flutter/material.dart';
import 'package:language_learning_app_flutter/utils/routes/routes_name.dart';
import 'package:language_learning_app_flutter/view/profile_view.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.profileView:
        {
          return MaterialPageRoute(
            builder: (BuildContext context) => const ProfileView(),
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

import 'package:flutter/material.dart';
import 'package:language_learning_app_flutter/res/components/themes.dart';
import 'package:language_learning_app_flutter/utils/routes/routes.dart';
import 'package:language_learning_app_flutter/utils/routes/routes_name.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: appThemeData,
      debugShowCheckedModeBanner: false,
      initialRoute: RoutesName.profileView,
      onGenerateRoute: Routes.generateRoute,
    );
  }
}

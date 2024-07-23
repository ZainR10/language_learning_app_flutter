import 'package:flutter/material.dart';
import 'package:language_learning_app_flutter/res/components/themes.dart';
import 'package:language_learning_app_flutter/utils/routes/routes.dart';
import 'package:language_learning_app_flutter/utils/routes/routes_name.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:language_learning_app_flutter/view_models/auth_models/login_model.dart';
import 'package:language_learning_app_flutter/view_models/auth_models/signup_model.dart';
import 'package:provider/provider.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (_) => LoginViewModel(),
          ),
          ChangeNotifierProvider(
            create: (_) => SignUpViewModel(),
          ),
        ],
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: appThemeData,
          debugShowCheckedModeBanner: false,
          initialRoute: RoutesName.splashView,
          onGenerateRoute: Routes.generateRoute,
        ));
  }
}

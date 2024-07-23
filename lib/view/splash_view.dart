import 'package:flutter/material.dart';
import 'package:language_learning_app_flutter/view_models/auth_models/splash_view_model.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  SplashViewLogic splashViewLogic = SplashViewLogic();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    splashViewLogic.isLogin(context);
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black87,
      body: Stack(children: [
        Center(
          child: Icon(
            Icons.track_changes,
            size: 250,
            color: Colors.red,
            shadows: [
              Shadow(color: Colors.red, blurRadius: 30, offset: Offset(0, 10))
            ],
          ),
        ),
        Center(
          child: Text(
            'Language App',
            style: TextStyle(
                fontSize: 40, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
      ]),
    );
  }
}

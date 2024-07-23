import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:language_learning_app_flutter/utils/routes/routes_name.dart';

class SplashViewLogic {
  void isLogin(BuildContext context) {
    final auth = FirebaseAuth.instance;
    final user = auth.currentUser;

    if (user != null) {
      Timer(const Duration(seconds: 3), () {
        Navigator.pushNamed(context, RoutesName.profileView);
      });
    } else {
      Timer(const Duration(seconds: 3), () {
        Navigator.pushNamed(context, RoutesName.loginView);
      });
    }
  }
}

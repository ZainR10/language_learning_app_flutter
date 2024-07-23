import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:language_learning_app_flutter/utils/routes/general_utils.dart';
import 'package:language_learning_app_flutter/utils/routes/routes_name.dart';

class SignUpViewModel with ChangeNotifier {
  bool _signUpLoading = false;
  bool get signUpLoading => _signUpLoading;

  void setSignUpLoading(bool value) {
    _signUpLoading = value;
    notifyListeners();
  }

  FirebaseAuth _auth = FirebaseAuth.instance;

  Future<void> signUp({
    required String email,
    required String password,
    required BuildContext context,
  }) async {
    setSignUpLoading(true);
    _auth
        .createUserWithEmailAndPassword(email: email, password: password)
        .then((_) {
      setSignUpLoading(false);
      GeneralUtils.snackBar('Account Created', context);
      Navigator.pushNamed(context, RoutesName.profileView);
    }).catchError((error) {
      setSignUpLoading(false);
      GeneralUtils.snackBar(error.toString(), context);
    });
  }
}

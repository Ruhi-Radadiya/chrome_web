import 'package:crome_web/screen/password.dart';
import 'package:crome_web/screen/sync.dart';
import 'package:crome_web/screen/verification.dart';
import 'package:flutter/material.dart';

import '../screen/home_page.dart';
import '../screen/profile_page.dart';
import '../screen/sign_in.dart';

class Routes {
  static String Profile_Page = '/';
  static String signinPage = 'SignInPage';
  static String password = 'PasswordPage';
  static String verification = 'verificationPage';
  static String sync = 'syncPage';
  static String home = 'homePage';

  static Map<String, WidgetBuilder> myRoutes = {
    Profile_Page: (context) => SetProfilePage(),
    signinPage: (context) => SignInPage(),
    password: (context) => PasswordPage(),
    verification: (context) => VerificationPage(),
    sync: (context) => SyncPage(),
    home: (context) => HomePage(),
  };
}

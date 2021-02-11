import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:notes_firebase_ddd_course/presentation/core/sign_in/sign_in_page.dart';

class AppWidget extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Notes',
        theme: ThemeData.light().copyWith(
            primaryColor: Colors.green[800],
            inputDecorationTheme:
                const InputDecorationTheme(alignLabelWithHint: true)),
        home: SignInPage());
  }
}

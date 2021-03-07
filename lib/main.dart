import 'package:flutter/material.dart';
import 'package:krates/components/shared/GlobalHeader.dart';
import 'package:krates/custom-style/CustomColors.dart';
import 'package:krates/screens/ProjectListScreen.dart';

void main() {
  runApp(KratesApp());
}

class KratesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: new ThemeData(
          primaryColor: Colors.teal,
          scaffoldBackgroundColor: Color(primaryColor),
          floatingActionButtonTheme: FloatingActionButtonThemeData(
            backgroundColor: Colors.white,
            foregroundColor: Color(primaryColor),
          ),
          appBarTheme: AppBarTheme(
            backgroundColor: Color(primaryColor),
          )
        ),
        home: new Scaffold(
          appBar: GlobalHeader(),
          body: ProjectList(),
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:krates/screens/TaskList.dart';

void main() {
  runApp(KratesApp());
}

class KratesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: new ThemeData(
          primaryColor: Colors.teal,
          floatingActionButtonTheme: FloatingActionButtonThemeData(
            backgroundColor: Colors.teal,
          ),
        ),
        home: new Scaffold(
          body: TaskListScreen(),
        ));
  }
}

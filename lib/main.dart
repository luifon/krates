import 'package:flutter/material.dart';
import 'package:krates/components/shared/GlobalHeader.dart';
import 'package:krates/custom-style/CustomTheme.dart';
import 'package:krates/screens/project/ProjectListScreen.dart';

void main() {
  runApp(KratesApp());
}

class KratesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: customTheme,
        home: new Scaffold(
          appBar: HomeHeader(),
          body: ProjectList(),
        ));
  }
}

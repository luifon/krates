import 'package:flutter/material.dart';
import 'file:///C:/Users/luiz-/Documents/krates/lib/components/shared/MenuBox.dart';
import 'package:krates/custom-style/CustomColors.dart';
import 'file:///C:/Users/luiz-/Documents/krates/lib/screens/project/ProjectListScreen.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(primaryColor),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  // TODO create components here
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: ProjectList(),
    );
  }
}

class MainScreenMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            MenuBox(Icons.home, "All Projects"),
            SizedBox(width: 7.0),
            MenuBox(Icons.adjust, "Backlog"),
            SizedBox(width: 7.0),
            MenuBox(Icons.all_inclusive, "All Sprints"),
            SizedBox(width: 7.0),
            MenuBox(Icons.assignment, "Current Sprint"),
            SizedBox(width: 7.0),
            MenuBox(Icons.assessment, "Reports"),
            SizedBox(width: 7.0),
            MenuBox(Icons.person, "Members"),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:krates/components/MainScreenHeader.dart';
import 'package:krates/components/MenuBox.dart';
import 'package:krates/screens/TaskList.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff00796B),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            MainScreenHeader(),
            SingleChildScrollView(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: SizedBox(
                        height: 350.0,
                        child: TaskListScreen(),
                      ),
                    ),
                    SizedBox(height: 10.0,),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: SizedBox(
                        height: 350.0,
                        child: TaskListScreen(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: MainScreenMenu(),
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

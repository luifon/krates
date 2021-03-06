import 'package:flutter/material.dart';
import 'package:krates/components/MainScreenHeader.dart';
import 'package:krates/screens/TaskList.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SingleChildScrollView(
        child: Column(
          children: [
            MainScreenHeader(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: SizedBox(
                height: 230.0,
                child: TaskListScreen(),
              ),
            ),

          ],
        ),
      ),
    );
  }
}

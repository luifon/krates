import 'package:flutter/material.dart';
import 'package:krates/screens/MainScreen.dart';

class ProjectBox extends StatelessWidget {
  final String _projectName;

  ProjectBox(this._projectName);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onDoubleTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return MainScreen(_projectName);
        }));
      },
      child: Container(
        width: 90.0,
        height: 90.0,
        decoration: BoxDecoration(
            color: Colors.teal,
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Flexible(
                    child: Text(
                      _projectName,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

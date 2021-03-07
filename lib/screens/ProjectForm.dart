
import 'package:flutter/material.dart';
import 'package:krates/components/InputWidget.dart';

class ProjectFormScreen extends StatelessWidget {
  final TextEditingController _projectNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Create new task')),
      body: SingleChildScrollView(
        child: Column(
          children: [
            InputWidget(_projectNameController, 'Task Name', 'Required.', false),
            ElevatedButton(
              child: Text('Create'),
              style: ElevatedButton.styleFrom(
                primary: Colors.teal,
              ),
              onPressed: () => _createTask(context),
            ),
          ],
        ),
      ),
    );
  }

  void _createTask(BuildContext context) {
    final String? projectName = _projectNameController.text;
    Navigator.pop(context, projectName);
  }

}
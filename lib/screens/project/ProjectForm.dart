import 'package:flutter/material.dart';
import 'package:krates/components/shared/InputWidget.dart';

class ProjectFormScreen extends StatelessWidget {
  final TextEditingController _projectNameController = TextEditingController();
  final TextEditingController _projectDescriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Create new task')),
      body: SingleChildScrollView(
        child: Column(
          children: [
            InputWidget(
                _projectNameController, 'Project Name', 'Required.', false),
            InputWidget(
                _projectDescriptionController, 'Project Description', 'Required.', true),
            ElevatedButton(
              child: Text('Create'),
              style: ElevatedButton.styleFrom(
                primary: Colors.teal,
              ),
              onPressed: () => _createProject(context),
            ),
          ],
        ),
      ),
    );
  }

  void _createProject(BuildContext context) {
    final String? projectName = _projectNameController.text;
    Navigator.pop(context, projectName);
  }
}

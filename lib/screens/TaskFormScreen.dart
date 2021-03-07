
import 'package:flutter/material.dart';
import 'package:krates/components/InputWidget.dart';
import 'package:krates/models/Task.dart';

class TaskFormScreen extends StatelessWidget {
  final TextEditingController _taskNameController = TextEditingController();
  final TextEditingController _taskDescriptionController =
  TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Create new task')),
      body: SingleChildScrollView(
        child: Column(
          children: [
            InputWidget(_taskNameController, 'Task Name', 'Required.', false),
            InputWidget(
                _taskDescriptionController, 'Description', 'Required.', true),
            ListTile(
                title: Text('Select Categories'),
                onTap: () => _showCategoryDialog(context)),
            ListTile(
                title: Text('Select Sprint'),
                onTap: () => _showCategoryDialog(context)),
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
    final String? taskName = _taskNameController.text;
    final String? taskDescription = _taskDescriptionController.text;
    final Task newTask = new Task(taskName!, taskDescription!);
    Navigator.pop(context, newTask);
  }

  void showSprintDialog(BuildContext context) {
    bool _checkedValue = false;

    List<String> _categories = ['Backlog', 'Sprint 1', 'Sprint 2', 'Sprint 3'];

    showDialog(
        context: context,
        builder: (context) => SimpleDialog(
          title: Text('Pick your poison', textAlign: TextAlign.center),
          children: [
            CheckboxListTile(
              value: _checkedValue,
              onChanged: (value) => _checkedValue = value!,
              title: Text('Back-End'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text("Confirm"),
            ),
          ],
        ));
  }
}

void _showCategoryDialog(BuildContext context) {
  bool _checkedValue = false;

  List<String> _categories = [
    'Back-End',
    'Infrastructure',
    'Front-End',
    'Redirect'
  ];

  showDialog(
      context: context,
      builder: (context) => SimpleDialog(
        title: Text('Pick your poison', textAlign: TextAlign.center),
        children: [
          CheckboxListTile(
            value: _checkedValue,
            onChanged: (value) => _checkedValue = value!,
            title: Text('Back-End'),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text("Confirm"),
          ),
        ],
      ));
}

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:krates/models/Task.dart';

class TaskCard extends StatelessWidget {
  final Task _task;

  TaskCard(this._task);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: FlutterLogo(),
        title: Text(_task.title),
        subtitle: Text(_task.description),
        trailing: Icon(Icons.more_vert),
      ),
    );
  }
}

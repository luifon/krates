import 'package:flutter/material.dart';
import 'file:///C:/Users/luiz-/Documents/krates/lib/components/Task/TaskCard.dart';
import 'package:krates/models/Task.dart';
import 'package:krates/screens/TaskFormScreen.dart';

class TaskListScreen extends StatefulWidget {
  final List<Task> _taskList = List.from([]);

  @override
  State<StatefulWidget> createState() {
    return TaskListScreenState();
  }
}

class TaskListScreenState extends State<TaskListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: widget._taskList.length,
        itemBuilder: (context, index) {
          final taskItem = widget._taskList[index];
          return TaskCard(taskItem);
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return TaskFormScreen();
          })).then((newTask) => {if (newTask != null) _update(newTask)});
        },
      ),
    );
  }

  void _update(Task newTask) {
    setState(() {
      widget._taskList.add(newTask);
    });
  }
}

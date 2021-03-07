import 'package:flutter/material.dart';
import 'package:krates/components/Project/ProjectCard.dart';
import 'package:krates/screens/ProjectForm.dart';

class ProjectList extends StatefulWidget {
  final List<String> _projectList = List.from([]);

  @override
  _ProjectListState createState() => _ProjectListState();
}

class _ProjectListState extends State<ProjectList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: widget._projectList.length,
        itemBuilder: (context, index) {
          final taskItem = widget._projectList[index];
          return ProjectCard(taskItem);
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return ProjectFormScreen();
          })).then((newTask) => {if (newTask != null) _update(newTask)});
        },
      ),
    );
  }

  void _update(String newProject) {
    setState(() {
      widget._projectList.add(newProject);
    });
  }
}

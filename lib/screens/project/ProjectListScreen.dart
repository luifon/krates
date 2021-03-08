import 'package:flutter/material.dart';
import 'package:krates/components/project/ProjectBox.dart';
import 'package:krates/components/shared/GlobalHeader.dart';
import 'package:krates/screens/project/ProjectForm.dart';

class ProjectList extends StatefulWidget {
  final List<String> _projectList = List.from([]);

  @override
  _ProjectListState createState() => _ProjectListState();
}

class _ProjectListState extends State<ProjectList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GlobalHeader("Hello, John"),
      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 3,
        children: buildProjectBoxList(),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return ProjectFormScreen();
          })).then(
              (newProject) => {if (newProject != null) _update(newProject)});
        },
      ),
    );
  }

  List<ProjectBox> buildProjectBoxList() {
    return widget._projectList.map((a) => ProjectBox(a)).toList();
  }

  void _update(String newProject) {
    setState(() {
      widget._projectList.add(newProject);
    });
  }
}

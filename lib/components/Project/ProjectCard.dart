import 'package:flutter/material.dart';

class ProjectCard extends StatelessWidget {
  final String _projectName;

  ProjectCard(this._projectName);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(_projectName),
        trailing: Icon(Icons.more_vert),
      ),
    );
  }
}

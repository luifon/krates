import 'dart:core';

import 'package:uuid/uuid.dart';

class Task {
  Uuid id = Uuid();
  final String title;
  final String description;

  // Sprint sprint;
  // List<Category> category;

  Task(this.title, this.description);

  @override
  String toString() {
    return 'Task{title: $title, description: $description}';
  }
}

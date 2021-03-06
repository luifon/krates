import 'package:uuid/uuid.dart';

class Sprint {
  Uuid id = Uuid();
  int sprintNumber = 0;
  String description = "";

  Sprint(this.sprintNumber, this.description);

  @override
  String toString() {
    return 'Sprint{sprintNumber: $sprintNumber, description: $description}';
  }
}

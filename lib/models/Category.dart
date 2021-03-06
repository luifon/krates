import 'package:uuid/uuid.dart';

class Category {
  Uuid id = Uuid();
  final String name;

  Category(this.name);

  @override
  String toString() {
    return 'Categories{name: $name}';
  }
}

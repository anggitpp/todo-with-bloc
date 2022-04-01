import 'package:equatable/equatable.dart';
import 'package:uuid/uuid.dart';

enum Filter {
  all,
  active,
  completed,
}

Uuid uuid = const Uuid();

class Todo extends Equatable {
  final String id;
  final String description;
  final bool completed;
  Todo({
    String? id,
    required this.description,
    this.completed = false,
  }) : id = id ?? uuid.v4();

  Todo copyWith({
    String? id,
    String? description,
    bool? completed,
  }) {
    return Todo(
      id: id ?? this.id,
      description: description ?? this.description,
      completed: completed ?? this.completed,
    );
  }

  @override
  String toString() =>
      'Todo(id: $id, description: $description, completed: $completed)';

  @override
  List<Object?> get props => [id, description, completed];
}

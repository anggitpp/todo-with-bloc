part of 'todo_list_cubit.dart';

class TodoListState extends Equatable {
  final List<Todo> todos;
  const TodoListState({
    required this.todos,
  });

  factory TodoListState.initial() {
    return TodoListState(todos: [
      Todo(
        id: '1',
        description: 'Clean the room',
      ),
      Todo(
        id: '2',
        description: 'Do the washes',
      ),
      Todo(
        id: '3',
        description: 'Do homework',
      ),
    ]);
  }

  @override
  String toString() => 'TodoListState(todos: $todos)';

  TodoListState copyWith({
    List<Todo>? todos,
  }) {
    return TodoListState(
      todos: todos ?? this.todos,
    );
  }

  @override
  List<Object> get props => [todos];
}

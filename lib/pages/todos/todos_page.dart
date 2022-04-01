import 'package:flutter/material.dart';
import 'package:todo_bloc/pages/todos/create_todo.dart';
import 'package:todo_bloc/pages/todos/search_and_filter_todo.dart';
import 'package:todo_bloc/pages/todos/show_todos.dart';

import 'todo_header.dart';

class TodosPage extends StatelessWidget {
  const TodosPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          child: Column(
            children: [
              const TodoHeader(),
              const CreateTodo(),
              const SizedBox(
                height: 20,
              ),
              SearchAndFilterTodo(),
              const SizedBox(
                height: 20,
              ),
              const ShowTodos(),
            ],
          ),
        ),
      ),
    ));
  }
}

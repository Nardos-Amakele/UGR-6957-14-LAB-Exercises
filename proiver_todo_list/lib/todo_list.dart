import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'todo_detail_list.dart';
import 'todo_provider.dart';

import 'todo_modal.dart';


class TodoList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Todo List'),
      ),
      body: Consumer<TodoProvider>(
        builder: (context, todoProvider, child) {
          if (todoProvider.todos.isEmpty) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          return ListView.builder(
            itemCount: todoProvider.todos.length,
            itemBuilder: (context, index) {
              final Todo todo = todoProvider.todos[index];
              return Card(
                elevation: 1.0,
                margin: EdgeInsets.symmetric(horizontal: 3.0),
                child: ListTile(
                  title: Text(
                    todo.title,
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TodoDetail(todo: todo),
                      ),
                    );
                  },
                ),
              );
            },
          );
        },
      ),
    );
  }
}
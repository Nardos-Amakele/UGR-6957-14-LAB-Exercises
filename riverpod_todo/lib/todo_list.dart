import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_todo/todo_detail_list.dart';
import 'package:riverpod_todo/todo_modal.dart';
import 'package:riverpod_todo/todo_riverpod.dart';

class TodoList extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<List<Todo>> todos = ref.watch(todoProvider);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Todo List'),
      ),
      body: todos.when(
        data: (todoList) {
          if (todoList.isEmpty) {
            return Center(child: Text('No todos found.'));
          }

          return ListView.builder(
            itemCount: todoList.length,
            itemBuilder: (context, index) {
              final todo = todoList[index];
              return Card(
                elevation: 1.0,
                margin: EdgeInsets.symmetric(horizontal: 3.0),
                child: ListTile(
                  title: Text(
                    todo.title,
                    style: TextStyle(fontSize: 16.0),
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
        loading: () => Center(child: CircularProgressIndicator()),
        error: (error, stackTrace) => Center(child: Text('Failed to load todos.')),
      ),
    );
  }
}
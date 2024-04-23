import 'dart:convert';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;
import 'todo_modal.dart';

final todoProvider = FutureProvider<List<Todo>>((ref) async {
  final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos'));

  if (response.statusCode == 200) {
    final List<dynamic> jsonTodos = jsonDecode(response.body);
    return jsonTodos.map((json) => Todo.fromJson(json)).toList();
  } else {
    throw Exception('Failed to load todos');
  }
});
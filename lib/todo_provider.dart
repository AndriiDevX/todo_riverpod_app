import 'package:flutter_riverpod/legacy.dart';

import 'todo_model.dart';


class TodoNotifier extends StateNotifier<List<TodoModel>>{
  TodoNotifier() : super([]);

  void addTodo(String title){
  final newTodo = TodoModel(id: state.length, title: title, isCompleted: false);
  state = [...state, newTodo];

  }

  void removeTodo(TodoModel todo){
    state = state.where((p) => p.id != todo.id).toList();
  }

  void toggleTodo(int id){
    state = state.map((todo){
      if (todo.id == id){
        return todo.copyWith(isCompleted: !todo.isCompleted);
      }
      return todo;
    }).toList();
  }

  

}
final todoProvider = StateNotifierProvider<TodoNotifier, List<TodoModel>>(
    (ref) => TodoNotifier(),
    );
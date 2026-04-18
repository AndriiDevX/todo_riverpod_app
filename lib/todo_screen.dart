import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'todo_provider.dart';

class TodoScreen extends ConsumerWidget {
  const TodoScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    
    final todos = ref.watch(todoProvider);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context, 
            builder: (context){
              final controller = TextEditingController();
              return AlertDialog(
                title: Text('Add Todo'),
                content: TextField(
                  controller: controller,
                ),
                actions: [
                  TextButton(
                    onPressed: () {
                      ref.read(todoProvider.notifier).addTodo(controller.text);
                      Navigator.pop(context);
                    } , 
                    child: Icon(Icons.add) 
                    )
                ],
              );
            }
            );
        },
        child: Icon(Icons.add),
      ),
      appBar: AppBar(title: Text('Tasks'), centerTitle: true, backgroundColor: Colors.grey,),
      body: ListView.builder(
        itemCount: todos.length,
        itemBuilder: (context, index) {
          final todo = todos[index];
          return ListTile(
            leading: Checkbox(value: 
            todo.isCompleted, 
            onChanged: (_) {
              ref.read(todoProvider.notifier).toggleTodo(todo.id);
            }),
            trailing: IconButton(
              onPressed: () {
                ref.read(todoProvider.notifier).removeTodo(todo);
              },
              icon: Icon(Icons.delete),
            ),
            title: Text(todo.title),
          );
        },
      ),
    );
  }
}

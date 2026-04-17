class TodoModel {
  final int id;
  final String title;
  final bool isCompleted;

  TodoModel({required this.id, required this.title, required this.isCompleted});

  TodoModel copyWith({bool? isCompleted}){
    return TodoModel(id: id, title: title, isCompleted: isCompleted?? this.isCompleted);
  }
}
class ToDo {
  String? id;
  String? todoText;
  bool? isDone;

  ToDo({required this.id, required this.todoText, this.isDone = false});

  static List<ToDo> todoList() {
    return [
      ToDo(id: "01", todoText: "Wake up morning at 6", isDone: true),
      ToDo(id: "02", todoText: "Sleep in night at 10", isDone: false),
      ToDo(id: "03", todoText: "Dinner", isDone: true)
    ];
  }
}

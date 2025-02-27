class TodoModel {
  int? idTodo;
  String? title_todo;
  String? desc_todo;
  String? date_todo;
  bool? status_todo;

  TodoModel(
      {this.idTodo,
      this.title_todo,
      this.desc_todo,
      this.date_todo,
      this.status_todo});

  factory TodoModel.fromMap(Map<String, dynamic> map) {
    return TodoModel(
        idTodo: map['idTodo'],
        title_todo: map['title_todo'],
        desc_todo: map['desc_todo'],
        date_todo: map['date_todo'],
        status_todo: map['status_todo']);
  }
}

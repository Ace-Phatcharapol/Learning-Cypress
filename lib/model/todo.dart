class ToDo {
  String? id;
  String? todoText;
  bool isDone;

  ToDo({
    required this.id,
    required this.todoText,
    this.isDone = false,
  });

  static List<ToDo> todoList() {
    return [
      ToDo(id: '01', todoText: 'Morning Excercise', isDone: true),
      ToDo(id: '02', todoText: 'Buy Labubu', isDone: true),
      ToDo(id: '03', todoText: 'Check Email', isDone: true),
      ToDo(id: '04', todoText: 'Team Meeting', isDone: true),
      ToDo(id: '05', todoText: 'Finish tasks'),
      ToDo(id: '06', todoText: 'Dinner'),
      ToDo(id: '07', todoText: 'Meditates'),
      ToDo(id: '08', todoText: 'Read a book'),
      ToDo(id: '09', todoText: 'Play games'),
      ToDo(id: '10', todoText: 'Watch movies'),
      ToDo(id: '11', todoText: 'Take a shower'),
      ToDo(id: '12', todoText: 'Take a medicine'),
    ];
  }
}

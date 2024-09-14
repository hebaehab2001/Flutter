class Task {
  final String name;
  bool isDone;

  Task({ this.name, this.isDone = false});

  void doneChange() {
    isDone = !isDone;
  }
}
class Note{
  final String name;
  Note({ this.name});
}

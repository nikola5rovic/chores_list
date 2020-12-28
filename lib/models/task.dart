class Task {
  final String name;
  bool isFinished;

  Task({this.name, this.isFinished = false});

  void toggleFinished() {
    isFinished = !isFinished;
  }
}

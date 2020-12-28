import 'package:flutter/foundation.dart';
import 'dart:collection';

import './task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: 'Kupi hleb'),
    Task(name: 'Usisaj kucu'),
    Task(name: 'Pogledaj film'),
  ];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get taskCount {
    return _tasks.length;
  }

  void addTask(String newTaskTitle) {
    final task = Task(name: newTaskTitle);
    _tasks.add(task);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleFinished();
    notifyListeners();
  }

  void delete(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}

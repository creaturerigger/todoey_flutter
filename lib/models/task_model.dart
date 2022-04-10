import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:todoey_flutter/models/task.dart';

class TaskModel extends ChangeNotifier {
  final List<Task> _tasks = [];

  UnmodifiableListView<Task> get tasks => UnmodifiableListView<Task>(_tasks);

  int get taskCount => _tasks.length;

  void addTask(String taskTitle) {
    _tasks.add(Task(name: taskTitle));
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void removeAllTasks() {
    _tasks.clear();
    notifyListeners();
  }
}

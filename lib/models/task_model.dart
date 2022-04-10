import 'package:flutter/material.dart';
import 'package:todoey_flutter/models/task.dart';

class TaskModel extends ChangeNotifier {
  final List<Task> _tasks = [];

  List<Task> get tasks => _tasks;

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

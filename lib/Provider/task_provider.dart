// Provider
import 'package:flutter/material.dart';

class TaskProvider with ChangeNotifier {
  List<Map<String, dynamic>> _tasks = [];

  List<Map<String, dynamic>> get tasks => _tasks;

  void addTask(
    String task,
    String description,
    String? category,
    String? categoryName,
    int? priority,
    String? priorityFlag,
    String? time,
  ) {
    _tasks.add({
      'task': task,
      'description': description,
      'category': category,
      'categoryName': categoryName,
      'priority': priority,
      'priorityFlag': priorityFlag,
      'time': time,
    });
    notifyListeners();
  }

  void deleteTask(int index) {
    if (index >= 0 && index < _tasks.length) {
      _tasks.removeAt(index);
      notifyListeners();
    }
  }

  void editTask(int index, Map<String, dynamic> editedTask) {
    if (index >= 0 && index < _tasks.length) {
      if (index >= 0 && index < _tasks.length) {
        _tasks[index] = editedTask;
        notifyListeners();
      }
    }
  }
}

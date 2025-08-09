// Provider
import 'package:flutter/material.dart';

class TaskProvider with ChangeNotifier {
  List<Map<String, String>> _tasks = [];

  List<Map<String, String>> get tasks => _tasks;

  void addTask(String task, String description) {
    _tasks.add({'task': task, 'description': description});
    notifyListeners();
  }
}

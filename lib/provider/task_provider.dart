import 'package:flutter/foundation.dart';
import 'package:todoeay/models/task.dart';

class TaskProvider extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: "Learn Dart", isDone: false),
    Task(name: "Learn Python", isDone: true),
    Task(name: "Learn Django", isDone: false),
  ];

  void addTask(String name) {
    tasks.add(Task(name: name, isDone: false));
    notifyListeners();
  }

  int get taskCount {
    return tasks.length;
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    tasks.removeWhere((t) => t == task);
    notifyListeners();
  }
}

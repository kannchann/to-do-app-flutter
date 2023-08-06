import 'package:flutter/foundation.dart';
import 'tasks.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier {
  List<Tasks> _tasks = [
    Tasks(name: 'buy milk'),
    Tasks(name: 'buy book'),
    Tasks(name: 'buy makeup'),
  ];
  UnmodifiableListView<Tasks> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get taskCount {
    return _tasks.length;
  }

  void addTasks(String newTask) {
    final task = Tasks(name: newTask);
    _tasks.add(task);
    notifyListeners();
  }

  void updateTasks(Tasks task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Tasks task) {
    _tasks.remove(task);
    notifyListeners();
  }
}

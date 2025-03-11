import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';
import 'task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [];
  late Box _tasksBox;

  TaskData() {
    _initBox();
  }

  void _initBox() async {
    _tasksBox = await Hive.openBox('mybox');
    _tasks = _tasksBox.keys.map((key) {
      final taskMap = Map<String, dynamic>.from(_tasksBox.get(key));
      return Task.fromMap(taskMap);
    }).toList();
    notifyListeners();
  }

  int get taskCount {
    return _tasks.length;
  }

  List<Task> get tasks {
    return _tasks;
  }

  void addTask(String newTaskTitle) {
    final task = Task(name: newTaskTitle);
    _tasksBox.add(task.toMap());
    _tasks.add(task);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    final index = _tasks.indexOf(task);
    final key = _tasksBox.keyAt(index);
    _tasksBox.put(key, task.toMap());
    notifyListeners();
  }

  void deleteTask(Task task) {
    final index = _tasks.indexOf(task);
    final key = _tasksBox.keyAt(index);
    _tasksBox.delete(key);
    _tasks.remove(task);
    notifyListeners();
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:todoey/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: "Buy milk"),
    Task(name: "Buy eggs"),
    Task(name: "Buy oil for home"),
    Task(name: "Buy some thing for night"),
  ];

  int get taskCount {
    return tasks.length;
  }

  void addTask(Task task) {
    tasks.add(task);
    notifyListeners();
  }

  void isChecked(int index, bool isDone) {
    tasks[index].isDone = isDone;
    notifyListeners();
  }

  int CompletedTasks() {
    int ischecked = 0;

    for (var i = 0; i < tasks.length; i++) {
      if (tasks[i].isDone == false) {
        ischecked++;
      }
    }
    return ischecked;
  }
}

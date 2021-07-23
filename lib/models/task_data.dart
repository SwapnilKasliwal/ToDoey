import 'package:flutter/material.dart';
import 'tasks.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier{

  List<Task> _tasks = [];

  UnmodifiableListView<Task> get tasks{
    return UnmodifiableListView(_tasks);
  }

  int get taskCount {
    return _tasks.length;
  }
  void addData(String? newString){
    _tasks.add(
      Task(
        name: newString,
      )
    );
    notifyListeners();
  }
  
  void updateTask(Task task){
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task){
    _tasks.remove(task);
    notifyListeners();
  }
}

import 'package:flutter/material.dart';
import 'package:todo/models/task.dart';
class TaskData extends ChangeNotifier{
  List<Task> tasks=[
    Task(name: 'go shopping'),
    Task(name: 'bye a gift'),
    Task(name: 'repair the car'),
  ];
  
  void addTask(String newTaskTitle){
    tasks.add(Task(name: newTaskTitle));
    notifyListeners();
  }
  void updatTask(Task task){
    task.doneChange();
    notifyListeners();
  }
  void deletetask(Task task){
    tasks.remove(task);
    notifyListeners();
  }
}
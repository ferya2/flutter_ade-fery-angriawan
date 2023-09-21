

import 'package:flutter/cupertino.dart';
import 'task_model.dart';

class TaskManager extends ChangeNotifier {
  final _taskModels = <TaskModel>[];
  List<TaskModel> get taskModels => List.unmodifiable(_taskModels);

  void deleteTask(int index) {
    _taskModels.removeAt(index);
    notifyListeners();
  }

  void addTask(TaskModel task) {
    _taskModels.add(task);
    notifyListeners();
  }
}

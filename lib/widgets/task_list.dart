import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './task_tile.dart';
import '../models/task_data.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return TaskTile(
              taskTitle: task.name,
              isChecked: task.isFinished,
              checkboxCallback: (checkboxState) {
                taskData.updateTask(task);
              },
              deleteTask: () {
                taskData.delete(task);
              },
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}

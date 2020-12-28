import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function checkboxCallback;
  final Function deleteTask;

  TaskTile({
    this.isChecked,
    this.taskTitle,
    this.checkboxCallback,
    this.deleteTask,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Checkbox(
            activeColor: Colors.deepOrange,
            value: isChecked,
            onChanged: checkboxCallback,
          ),
          FlatButton(
            child: Icon(
              Icons.delete,
              color: Colors.deepOrange,
            ),
            onPressed: deleteTask,
          ),
        ],
      ),
    );
  }
}

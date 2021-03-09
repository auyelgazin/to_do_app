import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String task;
  final Function checkboxCallback;
  final Function deleteTask;

  TaskTile(this.task, this.isChecked, this.checkboxCallback, this.deleteTask);

  // void checkboxCallback(bool checkboxState) {
  //   isChecked = checkboxState;
  // }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: deleteTask,
      title: Text(
        task,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        value: isChecked,
        onChanged: checkboxCallback,
      ),
    );
  }
}

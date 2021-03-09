import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:to_do_app/models/task.dart';
import 'package:provider/provider.dart';
import 'package:to_do_app/models/task_data.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskTile(Provider.of<TaskData>(context).tasks[index].name,
                Provider.of<TaskData>(context).tasks[index].isDone,
                (bool checkboxState) {
              taskData.updateTask(taskData.tasks[index]);
            }, () {
              taskData.deleteTask(taskData.tasks[index]);
            });
          },
          itemCount: Provider.of<TaskData>(context).taskCount,
        );
      },
    );
  }
}

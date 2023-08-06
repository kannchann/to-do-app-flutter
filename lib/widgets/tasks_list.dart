import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'task_tile.dart';
import 'package:to_do_list_app_flutter/models/task_data.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            final task = taskData.tasks[index];
            return TaskTile(
              taskName: task.name,
              isChecked: task.isDone,
              checkboxCallback: (bool? checkboxState) {
                taskData.updateTasks(task);
              },
              longPressCallback: () {
                taskData.deleteTask(task);
              },
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}

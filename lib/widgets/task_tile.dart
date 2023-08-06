import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final String taskName;
  final bool isChecked;
  final Function(bool?) checkboxCallback;
  final Function()? longPressCallback;

  TaskTile(
      {required this.taskName,
      required this.isChecked,
      required this.checkboxCallback,
      required this.longPressCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,
      title: Text(
        taskName,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkboxCallback,
      ),
    );
  }
}

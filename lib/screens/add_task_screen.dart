import 'package:flutter/material.dart';
import 'package:to_do_list_app_flutter/models/task_data.dart';
import 'package:provider/provider.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    late String newTask;
    return Container(
      color: const Color(0xff757575),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          const Text(
            'Add Task',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 30.0, color: Colors.lightBlueAccent),
          ),
          TextField(
            onChanged: (newText) => newTask = newText,
            autofocus: true,
            textAlign: TextAlign.center,
            decoration: const InputDecoration(
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  width: 5.0,
                  color: Colors.lightBlueAccent,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          TextButton(
            onPressed: () {
              Provider.of<TaskData>(context, listen: false).addTasks(newTask);

              Navigator.pop(context);
            },
            child: Text(
              'Add Task',
              style: TextStyle(color: Colors.white),
            ),
            style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all<Color>(Colors.lightBlueAccent),
            ),
          ),
        ]),
      ),
    );
  }
}

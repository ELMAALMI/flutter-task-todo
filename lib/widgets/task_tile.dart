import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoeay/models/task.dart';
import 'package:todoeay/provider/task_provider.dart';

class TaskTile extends StatelessWidget {
  Task task;
  Function checkBoxCallBack;
  Function removeBoxCallBack;
  TaskTile(
      {required this.task,
      required this.checkBoxCallBack,
      required this.removeBoxCallBack});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        task.name,
        style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            decoration: task.isDone ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        value: task.isDone,
        onChanged: (v) => {checkBoxCallBack()},
      ),
      onLongPress: () => {removeBoxCallBack()},
    );
  }
}

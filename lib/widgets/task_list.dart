import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoeay/models/task.dart';
import 'package:todoeay/provider/task_provider.dart';
import 'package:todoeay/widgets/task_tile.dart';

class TaskList extends StatefulWidget {
  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskProvider>(
      builder: (ctx, data, _) => ListView.builder(
        itemBuilder: (ctx, idx) => TaskTile(
            task: data.tasks[idx],
            checkBoxCallBack: () {
              data.updateTask(data.tasks[idx]);
            },
            removeBoxCallBack: () {
              data.deleteTask(data.tasks[idx]);
            }),
        itemCount: data.taskCount,
      ),
    );
  }
}

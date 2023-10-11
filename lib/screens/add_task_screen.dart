import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:todoeay/provider/task_provider.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String _task_name = "";

    return Consumer<TaskProvider>(
      builder: (ctx, data, _) => Container(
        color: const Color(0xff757575),
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0),
            ),
          ),
          child: Column(
            children: [
              const Text(
                "Add New Task",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              TextField(
                autofocus: true,
                textAlign: TextAlign.center,
                onChanged: (txt) => {_task_name = txt},
              ),
              const SizedBox(
                height: 15.0,
              ),
              OutlinedButton(
                onPressed: () =>
                    {data.addTask(_task_name), Navigator.pop(context)},
                child: const Icon(
                  Icons.add,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoeay/provider/task_provider.dart';
import 'package:todoeay/screens/add_task_screen.dart';
import 'package:todoeay/widgets/task_list.dart';

class TaskScreen extends StatelessWidget {
  const TaskScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskProvider>(
      builder: (ctx, data, _) => Scaffold(
          backgroundColor: Colors.blue,
          floatingActionButton: FloatingActionButton(
            onPressed: () => {
              showModalBottomSheet(
                context: context,
                builder: (ctx) => SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).viewInsets.bottom,
                    ),
                    child: AddTaskScreen(),
                  ),
                ),
                isScrollControlled: true,
              )
            },
            backgroundColor: Colors.blueAccent,
            child: const Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(
                    top: 60.0, left: 30.0, right: 30.0, bottom: 30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 30.0,
                      child: Icon(
                        Icons.list,
                        size: 30,
                        color: Colors.blueAccent,
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    const Text(
                      "Todoey",
                      style: TextStyle(
                          fontSize: 50,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "${data.taskCount} Task",
                      style: const TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        // fontWeight: FontWeight.bold
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0),
                    ),
                  ),
                  child: TaskList(),
                ),
              )
            ],
          )),
    );
  }
}

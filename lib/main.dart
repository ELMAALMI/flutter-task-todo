import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoeay/provider/task_provider.dart';
import 'package:todoeay/screens/TaskScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskProvider(),
      child: MaterialApp(
        title: 'Todoeay',
        theme: ThemeData(useMaterial3: true),
        home: TaskScreen(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

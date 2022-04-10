import 'package:flutter/material.dart';
import 'package:todoey_flutter/screens/tasks_screen.dart';
import 'package:todoey_flutter/models/task_model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TaskModel>(
      create: (context) => TaskModel(),
      child: const MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}

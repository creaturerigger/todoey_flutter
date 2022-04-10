import 'package:flutter/material.dart';
import 'package:todoey_flutter/widgets/task_tile.dart';
import 'package:todoey_flutter/models/task.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task_model.dart';

class TasksList extends StatelessWidget {
  final List<Task> tasks;

  const TasksList({Key? key, required this.tasks}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
            taskTitle: tasks[index].name,
            isChecked: tasks[index].isDone,
            checkboxCallback: (checkboxState) {
              Provider.of<TaskModel>(context, listen: false)
                  .updateTask(tasks[index]);
            });
      },
      itemCount: tasks.length,
    );
  }
}

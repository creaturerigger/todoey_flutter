import 'package:flutter/material.dart';
import 'package:todoey_flutter/widgets/task_tile.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task_model.dart';

class TasksList extends StatelessWidget {
  const TasksList({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskModel>(
      builder: (context, taskModel, child) => ListView.builder(
        itemBuilder: (context, index) {
          return TaskTile(
              taskTitle: taskModel.tasks[index].name,
              isChecked: taskModel.tasks[index].isDone,
              checkboxCallback: (checkboxState) {
                taskModel.updateTask(taskModel.tasks[index]);
              });
        },
        itemCount: taskModel.tasks.length,
      ),
    );
  }
}

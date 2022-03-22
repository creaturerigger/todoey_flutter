import 'package:flutter/material.dart';
import 'package:todoey_flutter/widgets/task_checkbox.dart';

// ignore: must_be_immutable
class TaskTile extends StatefulWidget {
  const TaskTile({Key? key}) : super(key: key);
  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool? isChecked = false;
  // final String title;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'This is a task.',
        style: TextStyle(
          decoration: isChecked! ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: TaskCheckbox(
        checkboxState: isChecked!,
        checkboxCallback: (newValue) {
          setState(() {
            isChecked = newValue;
          });
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TaskTile extends StatefulWidget {
  bool isChecked;
  final String title;
  final Function()? longPressCallback;

  TaskTile(
      {Key? key,
      required this.isChecked,
      required this.title,
      this.longPressCallback})
      : super(key: key);
  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: widget.longPressCallback,
      title: Text(
        widget.title,
        style: TextStyle(
          decoration: widget.isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: widget.isChecked,
        onChanged: (value) {
          setState(() {
            widget.isChecked = value!;
          });
        },
      ),
    );
  }
}

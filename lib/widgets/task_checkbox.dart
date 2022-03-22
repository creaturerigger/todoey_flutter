import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TaskCheckbox extends StatelessWidget {
  final bool checkboxState;
  final Function(bool?) checkboxCallback;
  const TaskCheckbox(
      {Key? key, required this.checkboxState, required this.checkboxCallback})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlueAccent,
      value: checkboxState,
      onChanged: checkboxCallback,
    );
  }
}

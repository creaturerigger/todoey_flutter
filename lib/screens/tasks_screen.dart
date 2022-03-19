import 'package:flutter/material.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
        child: const Icon(Icons.add),
        onPressed: () {},
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.only(
              top: 60.0,
              left: 30.0,
              right: 30.0,
              bottom: 30.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const <Widget>[
                CircleAvatar(
                  child: Icon(
                    Icons.list,
                    size: 40.0,
                    color: Colors.lightBlueAccent,
                  ),
                  backgroundColor: Colors.white,
                  radius: 30.0,
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'Todoey',
                  style: TextStyle(
                    fontSize: 50.0,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
                Text(
                  '12 tasks',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              child: null,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

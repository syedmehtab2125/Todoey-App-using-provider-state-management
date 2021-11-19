import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task.dart';
import 'package:todoey/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, TaskData, child) {
        return Container(
          color: const Color(0xff757575),
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Text(
                    "Add Todo",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 30, color: Colors.blueAccent),
                  ),
                  TextField(
                    autofocus: true,
                    controller: textEditingController,
                  ),
                  TextButton(
                    onPressed: () {
                      if (textEditingController.text.isNotEmpty) {
                        TaskData.addTask(
                            Task(name: textEditingController.text));
                        Navigator.pop(context);
                      }
                    },
                    child: const Text(
                      "Add",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.blueAccent)),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

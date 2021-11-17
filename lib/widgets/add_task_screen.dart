import 'package:flutter/material.dart';
import 'package:todoey/models/task.dart';

class AddTaskScreen extends StatefulWidget {
  final List<Task> tasks;
  final Function addTodo;
  AddTaskScreen({required this.tasks, required this.addTodo});

  @override
  State<AddTaskScreen> createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  @override
  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
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
                  widget.addTodo(textEditingController.text);
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
  }
}

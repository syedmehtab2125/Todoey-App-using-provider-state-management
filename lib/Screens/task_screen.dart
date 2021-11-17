import 'package:flutter/material.dart';
import 'package:todoey/models/task.dart';
import 'package:todoey/widgets/add_task_screen.dart';
import 'package:todoey/widgets/todo_listview.dart';

class TaskScreen extends StatefulWidget {
  List<Task> tasks = [
    Task(name: "Buy milk"),
    Task(name: "Buy eggs"),
    Task(name: "Buy oil for home"),
    Task(name: "Buy some thing for night")
  ];

  @override
  State<TaskScreen> createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (BuildContext context) => AddTaskScreen(
                    tasks: widget.tasks,
                    addTodo: (todoTitle) {
                      setState(() {
                        widget.tasks.add(Task(name: todoTitle));
                      });
                      Navigator.pop(context);
                    },
                  ));
        },
        child: const Icon(Icons.add),
      ),
      body: SafeArea(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          padding:
              const EdgeInsets.only(top: 60, bottom: 30, right: 30, left: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CircleAvatar(
                child: Icon(
                  Icons.list,
                  size: 30,
                ),
                backgroundColor: Colors.white,
                radius: 30,
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Todoey",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                    fontWeight: FontWeight.w600),
              ),
              Text("${widget.tasks.length} Tasks",
                  style: TextStyle(color: Colors.white, fontSize: 18)),
            ],
          ),
        ),
        TodoListView(tasks: widget.tasks)
      ])),
    );
  }
}

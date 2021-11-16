import 'package:flutter/material.dart';
import 'package:todoey/Screens/widgets/add_task_screen.dart';
import 'package:todoey/Screens/widgets/todo_listview.dart';

class TaskScreen extends StatelessWidget {
  const TaskScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (BuildContext context) => const AddTaskScreen());
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
            children: const [
              CircleAvatar(
                child: Icon(
                  Icons.list,
                  size: 30,
                ),
                backgroundColor: Colors.white,
                radius: 30,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Todoey",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                    fontWeight: FontWeight.w600),
              ),
              Text("12 Tasks",
                  style: TextStyle(color: Colors.white, fontSize: 18)),
            ],
          ),
        ),
        TodoListView()
      ])),
    );
  }
}

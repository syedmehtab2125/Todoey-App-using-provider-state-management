import 'package:flutter/material.dart';
import 'package:todoey/models/task.dart';
import 'package:todoey/widgets/todo_list_tile.dart';

class TodoListView extends StatefulWidget {
  final List<Task> tasks;
  TodoListView({required this.tasks});
  @override
  State<TodoListView> createState() => _TodoListViewState();
}

class _TodoListViewState extends State<TodoListView> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 70.0),
          child: SizedBox(
              height: 200,
              child: ListView.builder(
                  itemCount: widget.tasks.length,
                  itemBuilder: (_, index) {
                    return TodosListTile(
                        todoName: widget.tasks[index].name,
                        isChecked: widget.tasks[index].isDone,
                        checkboxCallback: (checkboxState) {
                          setState(() {
                            widget.tasks[index].isDone = checkboxState;
                          });
                        });
                  })),
        ),
      ),
    );
  }
}

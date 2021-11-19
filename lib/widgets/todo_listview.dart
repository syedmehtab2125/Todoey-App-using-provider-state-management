import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';
import 'package:todoey/widgets/todo_list_tile.dart';

class TodoListView extends StatelessWidget {
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
              child: Consumer<TaskData>(
                builder: (context, TaskData, child) {
                  return ListView.builder(
                      itemCount: TaskData.taskCount,
                      itemBuilder: (_, index) {
                        return TodosListTile(
                            todoName: TaskData.tasks[index].name,
                            isChecked: TaskData.tasks[index].isDone,
                            checkboxCallback: (checkboxState) {
                              TaskData.isChecked(index, checkboxState);
                              TaskData.CompletedTasks();
                              // setState(() {
                              //   widget.tasks[index].isDone = checkboxState;
                              // });
                            });
                      });
                },
              )),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

//Lifting up the state
class TodosListTile extends StatelessWidget {
  final String todoName;
  final bool isChecked;
  final checkboxCallback;

  TodosListTile(
      {required this.todoName,
      required this.isChecked,
      required this.checkboxCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        todoName,
        style: TextStyle(
            fontSize: 18,
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(value: isChecked, onChanged: checkboxCallback),
    );
  }
}

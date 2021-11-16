import 'package:flutter/material.dart';

//Lifting up the state
class TodosListTile extends StatefulWidget {
  @override
  State<TodosListTile> createState() => _TodosListTileState();
}

class _TodosListTileState extends State<TodosListTile> {
  bool isChecked = false;
  void test(bool toogle) {
    setState(() {
      isChecked = toogle;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        "Need to buy eggs",
        style: TextStyle(
            fontSize: 18,
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        value: isChecked,
        onChanged: (value) {
          setState(() {
            isChecked = value!;
          });
        },
      ),
    );
  }
}

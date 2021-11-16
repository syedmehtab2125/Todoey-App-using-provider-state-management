import 'package:flutter/material.dart';
import 'package:todoey/Screens/widgets/todo_list_tile.dart';

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
        child: SizedBox(
          height: 200,
          child: ListView(
            shrinkWrap: true,
            children: [
              TodosListTile(),
              TodosListTile(),
            ],
          ),
        ),
      ),
    );
  }
}

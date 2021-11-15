import 'package:flutter/material.dart';

class TodosListTile extends StatelessWidget {
  const TodosListTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: const Text(
        "Need to buy eggs",
        style: TextStyle(fontSize: 18),
      ),
      trailing: Checkbox(
        value: false,
        onChanged: (value) {},
      ),
    );
  }
}

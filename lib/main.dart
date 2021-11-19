import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/Screens/task_screen.dart';
import 'package:todoey/models/task_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TaskData>(
        create: (context) => TaskData(),
        child: MaterialApp(
          title: 'Todoey App',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: TaskScreen(),
        ));
  }
}

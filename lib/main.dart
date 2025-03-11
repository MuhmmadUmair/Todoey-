import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import '../models/task_data.dart';
import '../screens/tasks_screens.dart';
import 'package:provider/provider.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox('mybox');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: TasksScreen(),
      ),
    );
  }
}

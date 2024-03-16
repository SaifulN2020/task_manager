import 'package:flutter/material.dart';
import 'package:task_manager/presentation/screen/splash_screen.dart';

class TaskManager extends StatelessWidget {
  const TaskManager({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Task Manager",
      home: SplashScreen(),
    );
  }
}

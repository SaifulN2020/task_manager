import 'package:flutter/material.dart';
import 'package:task_manager/presentation/screen/splash_screen.dart';
import 'package:task_manager/presentation/utils/app_colors.dart';

class TaskManager extends StatelessWidget {
  const TaskManager({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Task Manager",
        home: SplashScreen(),
        theme: ThemeData(
            inputDecorationTheme: InputDecorationTheme(
                fillColor: Colors.white,
                filled: true,
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(8))),
            elevatedButtonTheme: ElevatedButtonThemeData(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    backgroundColor: AppColors.themeColor,
                    foregroundColor: Colors.white,
                    padding:
                        EdgeInsets.symmetric(horizontal: 16, vertical: 12))),
            textTheme: TextTheme(
                titleLarge:
                    TextStyle(fontSize: 25, fontWeight: FontWeight.bold))));
  }
}

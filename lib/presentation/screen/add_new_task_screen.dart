import 'package:flutter/material.dart';
import 'package:task_manager/presentation/widget/background_setup.dart';
import 'package:task_manager/presentation/widget/profile_bar.dart';

class AddNewTaskScreen extends StatefulWidget {
  const AddNewTaskScreen({Key? key}) : super(key: key);

  @override
  State<AddNewTaskScreen> createState() => _AddNewTaskScreenState();
}

class _AddNewTaskScreenState extends State<AddNewTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: profileAppBar,
      body: BackgroundSetup(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Add New Task",
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),
            TextFormField(
              decoration: InputDecoration(
                hintText: "Title"
              ),
            ),
            TextFormField(
              maxLines: 6,
              decoration: InputDecoration(
                hintText: "Description"
              ),
            )
          ],
        ),
      ),
    );
  }
}

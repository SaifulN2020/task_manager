import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:task_manager/presentation/widget/background_setup.dart';
import 'package:task_manager/presentation/widget/profile_bar.dart';

class AddNewTaskScreen extends StatefulWidget {
  const AddNewTaskScreen({Key? key}) : super(key: key);

  @override
  State<AddNewTaskScreen> createState() => _AddNewTaskScreenState();
}

class _AddNewTaskScreenState extends State<AddNewTaskScreen> {
  final TextEditingController _titleTEController = TextEditingController();
  final TextEditingController _descriptionTEController =
      TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: profileAppBar,
      body: BackgroundSetup(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 48,
                ),
                Text("Add New Task",
                    style: Theme.of(context).textTheme.titleMedium),
                const SizedBox(
                  height: 8,
                ),
                TextFormField(
                  controller: _titleTEController,
                  decoration: const InputDecoration(hintText: "Title"),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: _descriptionTEController,
                  maxLines: 6,
                  decoration: const InputDecoration(hintText: "Description"),
                ),
                const SizedBox(height: 10),
                SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(Icons.arrow_circle_right_outlined),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
  @override
  void dispose() {
    _titleTEController.dispose();
    _descriptionTEController.dispose();
    super.dispose();
  }
}

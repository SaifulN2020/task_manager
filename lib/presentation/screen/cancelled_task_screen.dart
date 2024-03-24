import 'package:flutter/material.dart';
import 'package:task_manager/presentation/screen/add_new_task_screen.dart';
import 'package:task_manager/presentation/utils/app_colors.dart';
import 'package:task_manager/presentation/widget/background_setup.dart';
import '../widget/profile_bar.dart';
import '../widget/task_card.dart';
import '../widget/task_counter_section.dart';

class CancelledTaskScreen extends StatefulWidget {
  const CancelledTaskScreen({Key? key}) : super(key: key);

  @override
  State<CancelledTaskScreen> createState() => _CancelledTaskScreenState();
}

class _CancelledTaskScreenState extends State<CancelledTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: profileAppBar,
      body: BackgroundSetup(
        child: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            return const TaskCard();
          },
        ),
      ),
      floatingActionButton: const Icon(Icons.add),
    );
  }
}

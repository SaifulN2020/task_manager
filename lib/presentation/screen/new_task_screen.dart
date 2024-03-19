import 'package:flutter/material.dart';
import 'package:task_manager/presentation/widget/background_setup.dart';
import '../widget/profile_bar.dart';
import '../widget/task_card.dart';
import '../widget/task_counter_section.dart';

class NewTaskScreen extends StatefulWidget {
  const NewTaskScreen({Key? key}) : super(key: key);

  @override
  State<NewTaskScreen> createState() => _NewTaskScreenState();
}

class _NewTaskScreenState extends State<NewTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: profileAppBar,
      body: BackgroundSetup(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              taskCounterSection,
              Expanded(
                child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return const TaskCard();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

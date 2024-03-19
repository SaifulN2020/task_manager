import 'package:flutter/cupertino.dart';
import 'package:task_manager/presentation/widget/task_counter_card.dart';

Widget get taskCounterSection {
  return SizedBox(
    height: 100,
    child: ListView.separated(
      scrollDirection: Axis.horizontal,
      itemCount: 4,
      itemBuilder: (context, index) {
        return const TaskCounterCard(
          amount: 23,
          title: "New",
        );
      },
      separatorBuilder: (_, __) {
        return const SizedBox(
          height: 8,
        );
      },
    ),
  );
}

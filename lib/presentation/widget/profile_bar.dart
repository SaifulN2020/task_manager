import 'package:flutter/material.dart';
import 'package:task_manager/app.dart';
import 'package:task_manager/presentation/screen/auth/sign_in_screen.dart';
import 'package:task_manager/presentation/screen/update_profile_screen.dart';

import '../utils/app_colors.dart';

PreferredSizeWidget get profileAppBar {
  return AppBar(
    automaticallyImplyLeading: false,
    backgroundColor: AppColors.themeColor,
    title: GestureDetector(
      onTap: () {
        Navigator.push(
          TaskManager.navigatorKey.currentContext!,
          MaterialPageRoute(
            builder: (context) {
              return const UpdateProfileScreen();
            },
          ),
        );
      },
      child: Row(
        children: [
          const CircleAvatar(),
          const SizedBox(
            width: 16,
          ),
          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Saiful Uddin",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
                Text(
                  "saiful@gmail.com",
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
          IconButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                    TaskManager.navigatorKey.currentContext!,
                    MaterialPageRoute(builder: (context) {
                  return const SignInScreen();
                }), (route) => false);
              },
              icon: const Icon(Icons.logout))
        ],
      ),
    ),
  );
}

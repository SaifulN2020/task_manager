import 'package:flutter/material.dart';
import 'package:task_manager/presentation/screen/auth/sign_in_screen.dart';
import 'package:task_manager/presentation/widget/background_setup.dart';

import '../widget/app_logo.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _moveToSignIn();
  }

  Future<void> _moveToSignIn() async {
    await Future.delayed(const Duration(seconds: 2));
    if (mounted) {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) {
        return const SignInScreen();
      }));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BackgroundSetup(
      child: Center(
        child: AppLogo(),
      ),
    ));
  }
}


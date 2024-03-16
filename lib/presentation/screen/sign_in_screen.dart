import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_manager/presentation/utils/assets_path.dart';
import 'package:task_manager/presentation/widget/background_setup.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundSetup(
        child:  Center(
          child: SvgPicture.asset(
            "assets/images/logo.svg",
            width: 120,
            fit: BoxFit.scaleDown,
          ),
        ),
      ),
    );
  }
}

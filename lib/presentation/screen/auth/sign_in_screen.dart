import 'package:flutter/material.dart';
import 'package:task_manager/presentation/screen/auth/email_verification_screen.dart';
import 'package:task_manager/presentation/screen/main_bottom_nav_screen.dart';
import 'package:task_manager/presentation/screen/auth/sign_up_screen.dart';
import 'package:task_manager/presentation/widget/background_setup.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final TextEditingController _emaiController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  GlobalKey<FormState> _globalKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundSetup(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: SingleChildScrollView(
            child: Form(
              key: _globalKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 130,
                  ),
                  const Text(
                    "Get Start With",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: _emaiController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                      hintText: "Email",
                    ),
                  ),
                  const SizedBox(height: 8),
                  TextFormField(
                    controller: _passwordController,
                    obscureText: true,
                    decoration: const InputDecoration(hintText: "Password"),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushAndRemoveUntil(context,
                            MaterialPageRoute(builder: (context) {
                          return MainBottomNavScreen();
                        }), (route) => false);
                      },
                      child: Icon(Icons.arrow_circle_right_outlined),
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const SizedBox(
                    height: 54,
                  ),
                  Center(
                      child: TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return EmailVerificationScreen();
                                },
                              ),
                            );
                          },
                          child: const Text("Forgot password ?"))),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Dont have an acoount?"),
                      TextButton(
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return const SignUpScreen();
                            }));
                          },
                          child: const Text(
                            "Sign Up?",
                            style: TextStyle(color: Colors.green),
                          ))
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),

    );
  }

  @override
  void dispose() {
    _emaiController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}

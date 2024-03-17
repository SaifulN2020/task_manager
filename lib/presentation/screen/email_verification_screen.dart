import 'package:flutter/material.dart';
import 'package:task_manager/presentation/widget/background_setup.dart';

class EmailVerificationScreen extends StatefulWidget {
  const EmailVerificationScreen({Key? key}) : super(key: key);

  @override
  State<EmailVerificationScreen> createState() =>
      _EmailVerificationScreenState();
}

class _EmailVerificationScreenState extends State<EmailVerificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundSetup(
        child: Column(
          children: [
            const SizedBox(
              height: 120,
            ),
            Text(
              "Your Email Address",
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(
              height: 14,
            ),
            const Text(
              "A 6 digit verification code will sent to your email address",
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
                decoration: const InputDecoration(hintText: "Email Address")),
            const SizedBox(
              height: 35,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Have Account?"),
                ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text("Sign In"))
              ],
            )
          ],
        ),
      ),
    );
  }
}

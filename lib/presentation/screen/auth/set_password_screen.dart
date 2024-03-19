import 'package:flutter/material.dart';
import 'package:task_manager/presentation/screen/auth/sign_in_screen.dart';
import 'package:task_manager/presentation/widget/background_setup.dart';

class SetPasswordScreen extends StatefulWidget {
  const SetPasswordScreen({Key? key}) : super(key: key);

  @override
  State<SetPasswordScreen> createState() => _SetPasswordScreenState();
}

class _SetPasswordScreenState extends State<SetPasswordScreen> {
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundSetup(
          child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            Text(
              "Set Password",
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(
              height: 24,
            ),
            TextFormField(
              controller: _passwordController,
              decoration: const InputDecoration(
                hintText: "Password",
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: _confirmPasswordController,
              decoration: const InputDecoration(hintText: "Confirm password"),
            ),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {}, child: const Text("Confirm")),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Have Account"),
                TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const SignInScreen();
                      }));
                    },
                    child: const Text('Sign In',
                        style: TextStyle(fontSize: 24, color: Colors.green)))
              ],
            )
          ],
        ),
      )),
    );
  }

  @override
  void dispose() {
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }
}

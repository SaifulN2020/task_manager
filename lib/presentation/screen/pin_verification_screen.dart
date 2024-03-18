import 'package:flutter/material.dart';
import 'package:task_manager/presentation/screen/sign_in_screen.dart';
import 'package:task_manager/presentation/widget/background_setup.dart';

class PinVerificationScreen extends StatefulWidget {
  const PinVerificationScreen({Key? key}) : super(key: key);

  @override
  State<PinVerificationScreen> createState() =>
      _PinVerificationScreenState();
}

class _PinVerificationScreenState extends State<PinVerificationScreen> {
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
              "Pin Verification",
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
                decoration: const InputDecoration(hintText: "OTP")),
            const SizedBox(
              height: 35,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(onPressed: (){}, child: Text("Verify")),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Have Account?"),
                ElevatedButton(
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(context,
                          MaterialPageRoute(builder: (context){
                            return SignInScreen();
                          }), (route) => false);
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

import 'package:flutter/cupertino.dart';
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
            SizedBox(
              height: 120,
            ),
            Text(
              "Your Email Address",
              style: Theme.of(context).textTheme.titleLarge,
            ),
            SizedBox(
              height: 14,
            ),
            Text(
              "A 6 digit verification code will sent to your email address",
              style: TextStyle(fontSize: 15, color: Colors.grey),
            ),
            SizedBox(height: 10,),
            TextFormField(
                decoration: InputDecoration(hintText: "Email Address")),
            SizedBox(height: 35,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Have Account?"),
                ElevatedButton(onPressed: (){
                  Navigator.pop(context);
                }, child: Text("Sign In"))

              ],
            )
          ],
        ),
      ),
    );
  }
}

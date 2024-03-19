import 'package:flutter/material.dart';
import 'package:task_manager/presentation/screen/sign_in_screen.dart';
import 'package:task_manager/presentation/widget/background_setup.dart';

class SetPasswordScreen extends StatefulWidget {
  const SetPasswordScreen({Key? key}) : super(key: key);

  @override
  State<SetPasswordScreen> createState() => _SetPasswordScreenState();
}

class _SetPasswordScreenState extends State<SetPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundSetup(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
        children: [
            SizedBox(height: 100,),
            Text("Set Password",
              style: Theme.of(context).textTheme.titleLarge,),
            SizedBox(height: 24,),

            TextFormField(
              decoration: InputDecoration(
                hintText: "Password",

              ),
            ),
            SizedBox(height: 10,),
            TextFormField(
              decoration: InputDecoration(
                hintText: "Confirm password"
              ),
            ),SizedBox(

              height: 50,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(onPressed: (){}, child: Text("Confirm")),
            ),
          SizedBox(height: 20,),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Have Account"),
              TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return SignInScreen();
                }));
              }, child: Text('Sign In',
                  style: TextStyle(fontSize: 24,color: Colors.green)))
            ],
          )

        ],
      ),
          )),
    );
  }
}

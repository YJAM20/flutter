import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}
class _SignupScreenState extends State<SignupScreen> {

TextEditingController emailcontroller = TextEditingController();
TextEditingController passwordcontroller = TextEditingController();

@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text("Signup"),
      centerTitle: true,
      backgroundColor: Colors.green,
    ),
    body: Center(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          children: [
            Text(
              "welcom to app",
              style: TextStyle(color: Colors.black87, fontSize: 25),
            ),
            SizedBox(height: 50),
            TextField(
              controller: emailcontroller,
              decoration: InputDecoration(
                label: Text("email"),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                icon: Icon(Icons.email),
              ),
            ),
            SizedBox(height: 50),
            TextField(
              controller: passwordcontroller,
              obscureText: true,
              decoration: InputDecoration(
                label: Text("password"),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                icon: Icon(Icons.password),
              ),
            ),
            SizedBox(height: 50),
            ElevatedButton(
              onPressed: () {
                print("email is ${emailcontroller.text}");
                print("password is ${passwordcontroller.text}");
              },
              child: Text("Signup"),
            ),
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(" have an accont?"),
                TextButton(onPressed: () {}, child: Text("login")),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}
}

import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("login"),
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
                child: Text("login"),
              ),
              SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don`t have an accont?"),
                  TextButton(onPressed: () {}, child: Text("SIGNUP")),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

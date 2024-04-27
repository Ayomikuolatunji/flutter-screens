import 'package:flutter/material.dart';
import 'package:flutter_building_ui/components/my_button.dart';
import 'package:flutter_building_ui/components/my_textfield.dart';
import 'package:flutter_building_ui/components/square_title.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 60,
            ),
            const Icon(
              Icons.lock,
              size: 100,
            ),
            const SizedBox(
              height: 50,
            ),
            Text(
              "Welcome back, you have been missed",
              style: TextStyle(fontSize: 16, color: Colors.grey[700]),
            ),
            const SizedBox(
              height: 25,
            ),
            MyTextField(
                controller: email, hintText: "Email", obscureText: false),
            const SizedBox(
              height: 10,
            ),
            MyTextField(
                controller: password, hintText: "Password", obscureText: true),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Forgot password?",
                    style: TextStyle(color: Colors.grey[500]),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: MyButton(),
            ),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                children: [
                  Expanded(
                    child: Divider(
                      thickness: 0.5,
                      color: Colors.grey[400],
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Or continue with",
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: Divider(
                      thickness: 0.5,
                      color: Colors.grey[400],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            const Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SquareTitle(
                    imagePath: "lib/images/google.png",
                    height: 40,
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  SquareTitle(
                    imagePath: "lib/images/apple.png",
                    height: 40,
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Not a member?",
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Register now",
                    style: TextStyle(color: Colors.blue[700], fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      // appBar: AppBar(
      //   title: ,
      // ),
    );
  }
}

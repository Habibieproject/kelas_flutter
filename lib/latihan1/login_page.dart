import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.brown,
          title: const Text("Login Page"),
        ),
        body: ListView(
          children: [
            Image.asset(
              "assets/images/gambar2.jpeg",
              width: double.infinity,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  const Text(
                    "Login",
                    style: TextStyle(
                        color: Colors.brown,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        hintText: "Username",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25))),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        hintText: "Password",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25))),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  ElevatedButton(onPressed: () {}, child: const Text("Sign In"))
                ],
              ),
            ),
          ],
        ));
  }
}

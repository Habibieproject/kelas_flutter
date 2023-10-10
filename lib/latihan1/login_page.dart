import 'package:flutter/material.dart';
import 'package:kelas_flutter/project_train/book_app/book_app.dart';
import 'package:kelas_flutter/project_train/whatsapp/wa_home.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  final TextEditingController usernameController = TextEditingController();
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
                    controller: usernameController,
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
                  InkWell(
                    onTap: () {
                      if (usernameController.text == "wa") {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const WhatsApp()),
                        );
                      } else {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const BookAppList()),
                        );
                      }
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Container(
                          height: 40,
                          width: double.infinity,
                          decoration: const BoxDecoration(
                            color: Colors.blue,
                            border: Border(
                                bottom: BorderSide(
                              width: 5,
                            )),
                            // borderRadius:
                            //     BorderRadius.only(topLeft: Radius.circular(15))
                          ),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Tab Bar Widget"),
                            ],
                          )),
                    ),
                  )
                ],
              ),
            ),
          ],
        ));
  }
}

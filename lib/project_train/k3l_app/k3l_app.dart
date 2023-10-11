import 'package:flutter/material.dart';
import 'package:kelas_flutter/project_train/k3l_app/api/repo/auth_api.dart';
import 'package:kelas_flutter/project_train/k3l_app/view/list_data_k3l.dart';

class K3LApp extends StatelessWidget {
  K3LApp({super.key});
  final TextEditingController nikController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          // title: const Text("Login Page"),
        ),
        body: ListView(
          children: [
            Image.asset(
              "assets/images/logo.jpg",
              width: double.infinity,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  const SizedBox(
                    height: 8,
                  ),
                  TextField(
                    controller: nikController,
                    decoration: InputDecoration(
                        hintText: "NIK",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25))),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  TextField(
                    controller: passwordController,
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
                      String nik = nikController.text;
                      String password = passwordController.text;
                      print("${nikController.text} ${passwordController.text}");
                      Auth()
                          .loginApi(nik, password)
                          .then((value) => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const ListPatrolK3LScreen()),
                              ));
                      // if (nikController.text == "wa") {
                      //   Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => const WhatsApp()),
                      //   );
                      // } else {
                      //   Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => const BookAppList()),
                      //   );
                      // }
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
                              Text("Login"),
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

import 'package:flutter/material.dart';
import 'package:kelas_flutter/latihan1/login_page.dart';

class IconButtonWidget extends StatelessWidget {
  const IconButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const LoginPage()),
              );
            },
            icon: const Icon(Icons.login)),
        const Text("Login Page")
      ],
    );
  }
}

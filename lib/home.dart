import 'package:flutter/material.dart';
import 'package:kelas_flutter/latihan1/login_page.dart';
import 'package:kelas_flutter/layout_widget/layout_widgets.dart';
import 'package:kelas_flutter/text_widget/text_widget.dart';

class Home extends StatelessWidget {
  const Home({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigoAccent,
        title: const Text("List Widgets"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LayoutScreen()),
                  );
                },
                child: const Text("Layout Widgets")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TextWidgetScreen()),
                  );
                },
                child: const Text("Text Widgets")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginPage()),
                  );
                },
                child: const Text("Login Page"))
          ],
        ),
      ),
    );
  }
}

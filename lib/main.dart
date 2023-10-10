import 'package:flutter/material.dart';
// import 'package:kelas_flutter/home.dart';
import 'package:kelas_flutter/home.dart';

void main() {
  runApp(const Kelas());
}

class Kelas extends StatelessWidget {
  const Kelas({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mosfeed',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      home: const Home(title: "Flutter Kelas"),
    );
  }
}

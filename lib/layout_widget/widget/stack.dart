import 'package:flutter/material.dart';

class StackWidget extends StatelessWidget {
  const StackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
              color: Colors.blue,
              height: 100,
              width: double.infinity,
              child: const ListTile(
                title: Text("Judul"),
                subtitle: Text("SubJudul"),
              )),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Card(
      margin: EdgeInsets.all(8),
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            Text("data"),
            Text("data"),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class RowWidget extends StatelessWidget {
  const RowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 80,
          width: 80,
          color: Colors.blue,
        ),
        Container(
          height: 80,
          width: 80,
          color: Colors.green,
        )
      ],
    );
  }
}

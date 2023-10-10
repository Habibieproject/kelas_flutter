import 'package:flutter/material.dart';

class ExpandedWidget extends StatelessWidget {
  const ExpandedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          flex: 4,
          child: Container(
            height: 80,
            width: 80,
            color: Colors.blue,
          ),
        ),
        Expanded(
          child: Container(
            height: 80,
            width: 80,
            color: Colors.green,
          ),
        ),
        Expanded(
          child: Container(
            height: 80,
            width: 80,
            color: Colors.red,
          ),
        )
      ],
    );
  }
}

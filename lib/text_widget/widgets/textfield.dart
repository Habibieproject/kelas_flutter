import 'package:flutter/material.dart';

class TextFiledWidget extends StatefulWidget {
  const TextFiledWidget({super.key});

  @override
  State<TextFiledWidget> createState() => _TextFiledWidgetState();
}

class _TextFiledWidgetState extends State<TextFiledWidget> {
  TextEditingController fieldController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          obscureText: true,
          obscuringCharacter: 'x',
          controller: fieldController,
          onChanged: (value) {
            setState(() {
              print(value);
              // fieldController.text = value;
            });
          },
        ),
        Text("Hasil Inputan ${fieldController.text}")
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:kelas_flutter/text_widget/text_widget.dart';

class ElevatedWidget extends StatelessWidget {
  const ElevatedWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const TextWidgetScreen()),
          );
        },
        child: const Text("Text Widgets"));
  }
}

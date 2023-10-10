import 'package:flutter/material.dart';
import 'package:kelas_flutter/other_widget/other_widget.dart';

class TextButtonWidget extends StatelessWidget {
  const TextButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const OtherWidget()),
          );
        },
        child: const Text("Other Widget"));
  }
}

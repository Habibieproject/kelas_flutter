import 'package:flutter/material.dart';
import 'package:kelas_flutter/text_widget/widgets/richtext.dart';
import 'package:kelas_flutter/text_widget/widgets/text.dart';
import 'package:kelas_flutter/text_widget/widgets/textfield.dart';

class TextWidgetScreen extends StatelessWidget {
  const TextWidgetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: const Text("Text Input"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(12),
        children: const [TextFiledWidget(), RichTextWidget(), TextWidget()],
      ),
    );
  }
}

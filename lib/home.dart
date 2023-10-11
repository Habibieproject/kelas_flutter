import 'package:flutter/material.dart';
import 'package:kelas_flutter/event_handling_widget/elevated_button.dart';
import 'package:kelas_flutter/event_handling_widget/gesture_widget.dart';
import 'package:kelas_flutter/event_handling_widget/icon_button.dart';
import 'package:kelas_flutter/event_handling_widget/inkwell_widget.dart';
import 'package:kelas_flutter/event_handling_widget/text_button.dart';
import 'package:kelas_flutter/layout_widget/layout_widgets.dart';
import 'package:kelas_flutter/project_train/k3l_app/k3l_app.dart';
import 'package:kelas_flutter/project_train/todo_app/todo_app.dart';

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
            layoutWidget(context),
            const ElevatedWidget(),
            const IconButtonWidget(),
            const InkwellWidget(),
            const GestureWidget(),
            const TextButtonWidget(),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const TodoApp()),
                  );
                },
                child: const Text("Todo App")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => K3LApp()),
                  );
                },
                child: const Text("K3L App"))
          ],
        ),
      ),
    );
  }

  ElevatedButton layoutWidget(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const LayoutScreen()),
          );
        },
        child: const Text("Layout Widgets"));
  }
}

import 'package:flutter/material.dart';

class ScaffoldConstant extends StatelessWidget {
  const ScaffoldConstant({
    super.key,
    required this.title,
    required this.widget,
  });
  final String title;
  final Widget widget;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.tealAccent,
      ),
      body: widget,
    );
  }
}

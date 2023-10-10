import 'package:flutter/material.dart';

class GridViewWidget extends StatelessWidget {
  const GridViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4, crossAxisSpacing: 20, mainAxisSpacing: 10),
      itemCount: 12,
      padding: const EdgeInsets.all(12),
      itemBuilder: (BuildContext context, int index) {
        return Container(
          height: 40,
          width: 40,
          color: Colors.red,
        );
      },
    );
  }
}

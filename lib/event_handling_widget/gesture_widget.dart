import 'package:flutter/material.dart';
import 'package:kelas_flutter/input_widget/input_widget.dart';

class GestureWidget extends StatelessWidget {
  const GestureWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const InputWidget()),
        );
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Container(
            height: 40,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.blue,
              border: Border(
                  bottom: BorderSide(
                width: 5,
              )),
              // borderRadius:
              //     BorderRadius.only(topLeft: Radius.circular(15))
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Input Widget"),
              ],
            )),
      ),
    );
  }
}

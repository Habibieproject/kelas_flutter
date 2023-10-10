import 'package:flutter/material.dart';

class ListViewWidget extends StatelessWidget {
  const ListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          final dataWarna = index % 2;
          if (dataWarna == 0) {
            return Row(
              children: [
                Container(
                  height: 80,
                  width: 80,
                  color: const Color(0xFF234567),
                ),
                // const SizedBox(
                //   width: 16,
                // )
              ],
            );
          }
          return Row(children: [
            Container(
              height: 80,
              width: 80,
              color: Colors.green,
            )
          ]);
        });
    // ListView(
    //   scrollDirection: Axis.horizontal,
    //   shrinkWrap: true,
    //   children: [
    //     Row(
    //       children: [
    //         Container(
    //           height: 80,
    //           width: 80,
    //           color: Colors.blue,
    //         ),
    //         Container(
    //           height: 80,
    //           width: 80,
    //           color: Colors.green,
    //         )
    //       ],
    //     ),
    //   ],
    // );
  }
}

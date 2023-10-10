import 'package:flutter/material.dart';
import 'package:kelas_flutter/event_handling_widget/tab_bar.dart';

class InkwellWidget extends StatelessWidget {
  const InkwellWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const TabbarWidget()),
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
                Text("Tab Bar Widget"),
              ],
            )),
      ),
    );
  }
}

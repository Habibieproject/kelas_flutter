import 'package:flutter/material.dart';
import 'package:kelas_flutter/other_widget/widget/calender.dart';
import 'package:kelas_flutter/other_widget/widget/card.dart';
import 'package:kelas_flutter/other_widget/widget/listtile.dart';
import 'package:kelas_flutter/other_widget/widget/time.dart';
import 'package:kelas_flutter/utils/scaffold_constant.dart';

class OtherWidget extends StatelessWidget {
  const OtherWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const ScaffoldConstant(
        title: "Other Widget",
        widget: Column(
          children: [
            DatePickerWidget(),
            TimePickerPage(),
            CardWidget(),
            ListileWidget()
          ],
        ));
  }
}

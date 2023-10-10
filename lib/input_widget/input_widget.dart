import 'package:flutter/material.dart';
import 'package:kelas_flutter/input_widget/widget/checkbox_widget.dart';
import 'package:kelas_flutter/input_widget/widget/dropdown_widget.dart';
import 'package:kelas_flutter/input_widget/widget/radio_button.dart';
import 'package:kelas_flutter/input_widget/widget/switch_widget.dart';
import 'package:kelas_flutter/utils/scaffold_constant.dart';

class InputWidget extends StatelessWidget {
  const InputWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const ScaffoldConstant(
      title: "Input Widget",
      widget: Column(
        children: [
          DropdownWidget(),
          RadioButtonWidget(),
          CheckboxWidget(),
          SwitchWidget()
        ],
      ),
    );
  }
}

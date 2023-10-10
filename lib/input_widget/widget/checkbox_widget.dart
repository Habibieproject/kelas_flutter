import 'package:flutter/material.dart';

class CheckboxWidget extends StatefulWidget {
  const CheckboxWidget({super.key});

  @override
  _CheckboxWidgetState createState() => _CheckboxWidgetState();
}

class _CheckboxWidgetState extends State<CheckboxWidget> {
  bool _isChecked =
      false; // Ini adalah variabel untuk menyimpan status checkbox.
  bool _isChecked2 =
      false; // Ini adalah variabel untuk menyimpan status checkbox.
  int getTotalSelectedCheckboxes() {
    int totalSelected = 0;
    if (_isChecked) {
      totalSelected++;
    }
    if (_isChecked2) {
      totalSelected++;
    }
    return totalSelected;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            'Pilih status:',
            style: TextStyle(fontSize: 18.0),
          ),
          const SizedBox(height: 20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Checkbox(
                value: _isChecked,
                onChanged: (value) {
                  setState(() {
                    _isChecked = value!;
                  });
                },
              ),
              Checkbox(
                value: _isChecked2,
                onChanged: (value) {
                  setState(() {
                    _isChecked2 = value!;
                  });
                },
              ),
            ],
          ),
          const SizedBox(height: 20.0),
          Text(
            'Status checkbox: ${_isChecked ? 'Terpilih' : 'Tidak terpilih'}',
            style: const TextStyle(fontSize: 18.0),
          ),
          Text(
            'Status checkbox: ${_isChecked2 ? 'Terpilih' : 'Tidak terpilih'}',
            style: const TextStyle(fontSize: 18.0),
          ),
          Text(
            'Total checkbox terpilih: ${getTotalSelectedCheckboxes()}',
            style: const TextStyle(fontSize: 18.0),
          ),
        ],
      ),
    );
  }
}

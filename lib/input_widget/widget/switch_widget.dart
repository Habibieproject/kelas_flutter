import 'package:flutter/material.dart';

class SwitchWidget extends StatefulWidget {
  const SwitchWidget({super.key});

  @override
  _SwitchWidgetState createState() => _SwitchWidgetState();
}

class _SwitchWidgetState extends State<SwitchWidget> {
  bool _switchValue = false; // Ini adalah nilai awal dari Switch.

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            'Fitur Nyalakan/Matikan:',
            style: TextStyle(fontSize: 18.0),
          ),
          Switch(
            value: _switchValue,
            onChanged: (value) {
              setState(() {
                // Saat Switch berubah, perbarui nilai _switchValue.
                _switchValue = value;
              });
            },
          ),
          Text(
            _switchValue ? 'Nyalakan' : 'Matikan',
            style: const TextStyle(fontSize: 18.0),
          ),
        ],
      ),
    );
  }
}

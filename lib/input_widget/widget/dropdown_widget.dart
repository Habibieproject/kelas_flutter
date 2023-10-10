import 'package:flutter/material.dart';

class DropdownWidget extends StatefulWidget {
  const DropdownWidget({super.key});

  @override
  _DropdownWidgetState createState() => _DropdownWidgetState();
}

class _DropdownWidgetState extends State<DropdownWidget> {
  String?
      _selectedItem; // Ini adalah variabel untuk menyimpan item yang dipilih.

  // Daftar pilihan untuk dropdown.
  final List<String> _dropdownItems = ['Pilihan 1', 'Pilihan 2', 'Pilihan 3'];

  @override
  Widget build(BuildContext context) {
    print("object");
    print("test");
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            'Pilih satu dari dropdown:',
            style: TextStyle(fontSize: 18.0),
          ),
          const SizedBox(height: 20.0),
          DropdownButton<String>(
            value: _selectedItem,
            onChanged: (value) {
              setState(() {
                _selectedItem = value;
              });
            },
            items: _dropdownItems.map((item) {
              return DropdownMenuItem<String>(
                value: item,
                child: Text(item),
              );
            }).toList(),
          ),
          const SizedBox(height: 20.0),
          Text(
            'Item yang dipilih: ${_selectedItem ?? 'Belum dipilih'}',
            style: const TextStyle(fontSize: 18.0),
          ),
        ],
      ),
    );
  }
}

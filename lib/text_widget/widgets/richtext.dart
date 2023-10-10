import 'package:flutter/material.dart';

class RichTextWidget extends StatelessWidget {
  const RichTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RichText(
        text: const TextSpan(
          text: 'Teks ini ',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20.0,
          ),
          children: <TextSpan>[
            TextSpan(
              text: 'berisi berbagai gaya',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            TextSpan(
              text: ' seperti ',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            TextSpan(
              text: 'warna',
              style: TextStyle(
                color: Colors.red,
              ),
            ),
            TextSpan(
              text: ', ',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            TextSpan(
              text: 'ukuran',
              style: TextStyle(
                fontSize: 24.0,
                color: Colors.green,
              ),
            ),
            TextSpan(
              text: ', dan ',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            TextSpan(
              text: 'jenis huruf',
              style: TextStyle(
                fontFamily: 'Courier New',
                fontStyle: FontStyle.italic,
                color: Colors.purple,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

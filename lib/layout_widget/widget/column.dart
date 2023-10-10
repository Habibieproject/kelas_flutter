import 'package:flutter/material.dart';
import 'package:kelas_flutter/utils/app_image.dart';

class ColumnWidget extends StatelessWidget {
  const ColumnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 80,
          width: double.infinity,
          // decoration: BoxDecoration(image: ),
          child: Image.asset(AppImage.gambar1),
        ),
        SizedBox(
          // height: 80,
          width: double.infinity,
          // decoration: BoxDecoration(image: ),
          child: Image.network(
              "https://images.unsplash.com/photo-1696257203553-20ada15fce65?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80"),
        ),
        Container(
          height: 80,
          width: 80,
          decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.circular(10.0), // Radius sudut 10 px
          ),
          child: const Column(
            children: [
              Center(
                child: Text(
                  'Kotak Ini',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Center(
                child: Text(
                  'Kotak Ini',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}

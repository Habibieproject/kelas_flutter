import 'package:flutter/material.dart';
import 'package:kelas_flutter/model/book_model.dart';

class DetailBook extends StatelessWidget {
  const DetailBook({super.key, required this.data});
  final BookModel data;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Image.asset(data.gambarBuku),
          Text(data.namaBuku),
        ],
      ),
    );
  }
}

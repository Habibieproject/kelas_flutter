import 'package:flutter/material.dart';
import 'package:kelas_flutter/utils/app_image.dart';

class BookAppList extends StatelessWidget {
  const BookAppList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Book App"),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 8.0),
            child: Icon(Icons.menu),
          )
        ],
      ),
      body: ListView(
        children: [
          cardPromo(),
        ],
      ),
    );
  }

  Card cardPromo() {
    return Card(
        child: Row(
      children: [
        Expanded(
          child: Image.asset(
            AppImage.book7,
            height: 120,
          ),
        ),
        const Expanded(
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                      child: Text(
                    "ThePsychology of Money",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
                ],
              ),
              Row(
                children: [
                  Expanded(
                      child: Text(
                    "The psychology of money is the study of our behavior with money. Success with money isn't about knowledge, IQ or how good you are at math. It's about behavior, and everyone is prone to certain behaviors over others.",
                    style: TextStyle(fontSize: 10),
                  )),
                ],
              )
            ],
          ),
        )
      ],
    ));
  }
}

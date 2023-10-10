import 'package:flutter/material.dart';
import 'package:kelas_flutter/project_train/book_app/detail_book.dart';
import 'package:kelas_flutter/repository/book_data.dart';
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
        padding: const EdgeInsets.all(8),
        children: [
          cardPromo(),
          const SizedBox(
            height: 16,
          ),
          const Text(
            "Recommended for you",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 16,
          ),
          SizedBox(
            height: 120,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: bookData.length,
              itemBuilder: (BuildContext context, int index) {
                final data = bookData[index];
                return InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DetailBook(
                                data: data,
                              )),
                    );
                  },
                  child: Row(
                    children: [
                      Image.asset(
                        data.gambarBuku,
                        height: 120,
                      ),
                      const SizedBox(
                        width: 4,
                      )
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Card cardPromo() {
    return Card(
        elevation: 5,
        child: Row(
          children: [
            Expanded(
              child: Image.asset(
                AppImage.book7,
                height: 120,
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  const Row(
                    children: [
                      Expanded(
                          child: Text(
                        "The Psychology of Money",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )),
                    ],
                  ),
                  const Row(
                    children: [
                      Expanded(
                          child: Text(
                        "The psychology of money is the study of our behavior with money. Success with money isn't about knowledge, IQ or how good you are at math. It's about behavior, and everyone is prone to certain behaviors over others.",
                        style: TextStyle(fontSize: 8),
                      )),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: const Color(0xffDE7773),
                        ),
                        child: const Text(
                          "Grab Now",
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      const Text("Learn More")
                    ],
                  )
                ],
              ),
            )
          ],
        ));
  }
}
